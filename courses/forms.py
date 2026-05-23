from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class RegisterForm(UserCreationForm):
    email = forms.EmailField(required=True)

    class Meta:
        model = User
        fields = ("username", "email", "password1", "password2")

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        placeholders = {
            "username": "Username",
            "email": "Email",
            "password1": "Password",
            "password2": "Confirm password",
        }

        for name, field in self.fields.items():
            field.widget.attrs.update(
                {
                    "class": "form-control",
                    "placeholder": placeholders.get(name, ""),
                }
            )

    def save(self, commit=True):
        user = super().save(commit=False)
        user.email = self.cleaned_data["email"]
        if commit:
            user.save()
        return user
