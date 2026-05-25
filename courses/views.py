from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseForbidden
from django.shortcuts import render, redirect, get_object_or_404

from .forms import RegisterForm, CourseForm
from .models import Course, Category


def is_teacher(user):
    return getattr(getattr(user, "profile", None), "role", "student") == "teacher"


def can_manage_all_courses(user):
    return user.is_staff or user.is_superuser

# Create your views here.
def home(request):
    courses = list(
        Course.objects.filter(is_active=True)
        .prefetch_related("categories")
        .order_by("created_at")
    )
    categories = list(Category.objects.order_by("category_name"))
    category_map = {category.category_id: [] for category in categories}
    uncategorized = []

    for course in courses:
        course_categories = list(course.categories.all())
        if not course_categories:
            uncategorized.append(course)
            continue
        for category in course_categories:
            if category.category_id in category_map:
                category_map[category.category_id].append(course)

    grouped_courses = [
        {"category": category, "courses": category_map[category.category_id]}
        for category in categories
        if category_map[category.category_id]
    ]

    if uncategorized:
        grouped_courses.append({"category": None, "courses": uncategorized})

    has_uncategorized = bool(uncategorized)
    return render(
        request,
        "home.html",
        {
            "courses": courses,
            "categories": categories,
            "has_uncategorized": has_uncategorized,
            "grouped_courses": grouped_courses,
        },
    )

def course_list(request):
    courses = Course.objects.filter(is_active=True).order_by("created_at")
    can_create = request.user.is_authenticated and (
        can_manage_all_courses(request.user) or is_teacher(request.user)
    )
    can_edit_ids = set()
    if request.user.is_authenticated:
        if can_manage_all_courses(request.user):
            can_edit_ids = set(courses.values_list("course_id", flat=True))
        elif is_teacher(request.user):
            can_edit_ids = set(
                courses.filter(created_by=request.user).values_list("course_id", flat=True)
            )
    return render(
        request,
        "courses/course_list.html",
        {
            "courses": courses,
            "can_create": can_create,
            "can_edit_ids": can_edit_ids,
        },
    )

def course_detail(request, course_id):
    course = get_object_or_404(
        Course.objects.prefetch_related("categories"),
        course_id=course_id,
        is_active=True,
    )
    can_edit_course = False
    if request.user.is_authenticated:
        if can_manage_all_courses(request.user):
            can_edit_course = True
        elif is_teacher(request.user) and course.created_by_id == request.user.id:
            can_edit_course = True
    return render(
        request,
        "courses/course_detail.html",
        {"course": course, "can_edit_course": can_edit_course},
    )


@login_required
def course_create(request):
    if not (can_manage_all_courses(request.user) or is_teacher(request.user)):
        return HttpResponseForbidden("Only teachers can create courses.")

    if request.method == "POST":
        form = CourseForm(request.POST, request.FILES)
        if form.is_valid():
            course = form.save(commit=False)
            course.created_by = request.user
            course.save()
            form.save_m2m()
            return redirect("course_detail", course_id=course.course_id)
    else:
        form = CourseForm()

    return render(request, "courses/course_form.html", {"form": form, "mode": "create"})


@login_required
def course_edit(request, course_id):
    course = get_object_or_404(Course, course_id=course_id)
    if can_manage_all_courses(request.user):
        allowed = True
    else:
        allowed = is_teacher(request.user) and course.created_by_id == request.user.id

    if not allowed:
        return HttpResponseForbidden("You do not have permission to edit this course.")

    if request.method == "POST":
        form = CourseForm(request.POST, request.FILES, instance=course)
        if form.is_valid():
            form.save()
            return redirect("course_detail", course_id=course.course_id)
    else:
        form = CourseForm(instance=course)

    return render(
        request,
        "courses/course_form.html",
        {"form": form, "mode": "edit", "course": course},
    )

def register(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = RegisterForm()
    return render(request, 'accounts/register.html', {'form': form})

def login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)
        if user is not None:
            auth_login(request, user)
            return redirect('home')
        else:
            return render(request, 'accounts/login.html', {'error': 'Invalid credentials'})
    return render(request, 'accounts/login.html')

def logout(request):
    auth_logout(request)
    return redirect('home')
