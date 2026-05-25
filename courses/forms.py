from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

from .models import Course, UserProfile


class RegisterForm(UserCreationForm):
    email = forms.EmailField(required=True)
    role = forms.ChoiceField(
        choices=UserProfile.ROLE_CHOICES,
        widget=forms.Select,
        required=True,
    )

    class Meta:
        model = User
        fields = ("username", "email", "role", "password1", "password2")

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        placeholders = {
            "username": "Username",
            "email": "Email",
            "role": "Role",
            "password1": "Password",
            "password2": "Confirm password",
        }

        for name, field in self.fields.items():
            css_class = "form-select" if name == "role" else "form-control"
            field.widget.attrs.update(
                {
                    "class": css_class,
                    "placeholder": placeholders.get(name, ""),
                }
            )

    def save(self, commit=True):
        user = super().save(commit=False)
        user.email = self.cleaned_data["email"]
        if commit:
            user.save()
            UserProfile.objects.update_or_create(
                user=user,
                defaults={"role": self.cleaned_data["role"]},
            )
        return user


class CourseForm(forms.ModelForm):
    class Meta:
        model = Course
        fields = ("title", "description", "difficulty", "categories", "img", "is_active")
        widgets = {
            "description": forms.Textarea(attrs={"rows": 4}),
            "categories": forms.SelectMultiple(),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for name, field in self.fields.items():
            if name == "is_active":
                field.widget.attrs.setdefault("class", "form-check-input")
            elif name == "categories":
                field.widget.attrs.setdefault("class", "form-select")
                field.widget.attrs.setdefault("size", "5")
            else:
                field.widget.attrs.setdefault("class", "form-control")
