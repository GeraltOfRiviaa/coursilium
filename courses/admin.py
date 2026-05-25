from django.contrib import admin
from .models import (
    Education,
    User,
    UserProfile,
    Category,
    Course,
    UsersInCourse,
    Lesson,
    Module,
    Attachment,
    Calendar,
    Event,
    Message,
    CertificateType,
    UserCertificate,
)

admin.site.register(Education)
admin.site.register(User)
admin.site.register(UserProfile)
admin.site.register(Category)


@admin.register(Course)
class CourseAdmin(admin.ModelAdmin):
    filter_horizontal = ("categories",)
    list_display = ("title", "created_by", "is_active")
    list_filter = ("is_active",)
admin.site.register(UsersInCourse)
admin.site.register(Lesson)
admin.site.register(Module)
admin.site.register(Attachment)
admin.site.register(Calendar)
admin.site.register(Event)
admin.site.register(Message)
admin.site.register(CertificateType)
admin.site.register(UserCertificate)