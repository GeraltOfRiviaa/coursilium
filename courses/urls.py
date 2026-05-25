from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include
from courses.views import (
    register,
    login,
    logout,
    course_list,
    course_detail,
    course_create,
    course_edit,
)

urlpatterns = [
    path('', course_list, name='course_list'),
    path('create/', course_create, name='course_create'),
    path('<int:course_id>/edit/', course_edit, name='course_edit'),
    path('<int:course_id>/', course_detail, name='course_detail'),
    path('register/', register, name='register'),
    path('login/', login, name="login"),
    path('logout/', logout, name='logout'),
]