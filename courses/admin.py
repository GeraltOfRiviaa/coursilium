from django.contrib import admin
from .models import (
    Education,
    User,
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
admin.site.register(Category)
admin.site.register(Course)
admin.site.register(UsersInCourse)
admin.site.register(Lesson)
admin.site.register(Module)
admin.site.register(Attachment)
admin.site.register(Calendar)
admin.site.register(Event)
admin.site.register(Message)
admin.site.register(CertificateType)
admin.site.register(UserCertificate)