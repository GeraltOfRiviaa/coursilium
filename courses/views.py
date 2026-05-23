from django.shortcuts import render, redirect, get_object_or_404
from .forms import RegisterForm
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from .models import Course

# Create your views here.
def home(request):
    courses = Course.objects.filter(is_active=True).order_by("created_at")
    return render(request, "home.html", {"courses": courses})

def course_list(request):
    courses = Course.objects.filter(is_active=True).order_by("created_at")
    return render(request, "courses/course_list.html", {"courses": courses})

def course_detail(request, course_id):
    course = get_object_or_404(Course, course_id=course_id, is_active=True)
    return render(request, "courses/course_detail.html", {"course": course})

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
