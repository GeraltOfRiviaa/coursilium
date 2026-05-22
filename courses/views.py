from django.shortcuts import render

from .models import Course

# Create your views here.
def home(request):
    courses = Course.objects.filter(is_active=True).order_by("created_at")
    return render(request, "home.html", {"courses": courses})