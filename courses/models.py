from datetime import date

from django.conf import settings
from django.core.exceptions import ValidationError
from django.core.validators import EmailValidator, MinValueValidator, RegexValidator
from django.db import models
from django.utils import timezone
# Create your models here.


#validace textu bez čísel
TEXT_VALIDATOR = RegexValidator(
    regex=r"^[A-Za-zÀ-ž]+(?:[A-Za-zÀ-ž '\-]*[A-Za-zÀ-ž])?$",
    message="Zadejte prosím platný text.",
)
#validace uživatelského jména s čísly a jinými znaky
USERNAME_VALIDATOR = RegexValidator(
    regex=r"^[A-Za-z0-9_.-]+$",
    message="Přezdívka může obsahovat jen písmena, čísla, tečku, podtržítko a pomlčku.",
)
#validace souborů
MIME_TYPE_VALIDATOR = RegexValidator(
    regex=r"^[\w.+-]+/[\w.+-]+$",
    message="Zadejte platný typ souboru.",
)


def validate_birth_date(value):
    today = timezone.localdate()

    try:
        max_birth_date = today.replace(year=today.year - 18)
    #pouze pokud někdo se narodil 29. února a před 18 lety nebyl rok přestupný 
    except ValueError:
        max_birth_date = today.replace(month=2, day=28, year=today.year - 18)

    min_birth_date = date(1945, 1, 1)

    if value < min_birth_date:
        raise ValidationError("Neplatné datum narození! Minimální rok je 1945")
    if value > max_birth_date:
        raise ValidationError("Neplatné datum narození! Uživatelé mohou být pouze 18+")
class Education(models.Model):
    id_education = models.AutoField(primary_key=True)
    name = models.CharField(
        max_length=100,
        verbose_name="Vzdělání",
        help_text="Zadejte název vzdělání",
        validators=[TEXT_VALIDATOR],
    )
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "education"
        indexes = [
            models.Index(fields=["name"]),
            models.Index(fields=["id_education"]),
            models.Index(fields=["created_at"])
        ]
 
    def __str__(self):
        return self.name
 
 
class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    first_name = models.CharField(
        null=True,
        blank=True,
        max_length=30,
        verbose_name="Křestní jméno",
        help_text="Zadejte své křestní jméno",
        validators=[TEXT_VALIDATOR],
    )
    last_name = models.CharField(
        null=True,
        blank=True,
        max_length=30,
        verbose_name="Příjmení",
        help_text="Zadejte své příjmení",
        validators=[TEXT_VALIDATOR],
    )
    nickname = models.CharField(
        max_length=30,
        verbose_name="Přezdívka",
        help_text="Zadejte svou přezdívku",
        validators=[USERNAME_VALIDATOR],
    )
    email = models.CharField(
        max_length=100,
        verbose_name="E-mail",
        help_text="Zadejte svůj e-mail",
        validators=[EmailValidator("Neplatný e-mail!")],
    )
    password = models.CharField(
        max_length=255,
        verbose_name="Heslo",
        help_text="Zadejte své heslo",
    )
    bio = models.TextField(null=True, blank=True, verbose_name="Bio", help_text="Řekněte něco o sobě")
    id_education = models.ForeignKey(
        Education,
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        db_column="id_education",
        verbose_name="Vzdělání",
        help_text="Vyberte dosažené vzdělání",
    )
    profile_photo = models.ImageField(
        upload_to="media/profile-pics",
        null=True,
        blank=True,
        verbose_name="Profilová fotka",
        help_text="Nahrajte profilovou fotku",
    )
    birthday = models.DateField(
        null=True,
        blank=True,
        verbose_name="Narození",
        help_text="Zadejte datum svého narození",
        validators=[validate_birth_date],
    )
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "user"
        indexes = [
            models.Index(fields=["first_name", "last_name"]),
            models.Index(fields=["first_name"]),
            models.Index(fields=["id_education"]),
            models.Index(fields=["created_at"]),
            models.Index(fields=["user_id"])
            
        ]
 
    def __str__(self):
        return f"{self.first_name} {self.last_name}"


class UserProfile(models.Model):
    ROLE_CHOICES = [
        ("student", "Student"),
        ("teacher", "Teacher"),
    ]

    user = models.OneToOneField(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE,
        related_name="profile",
    )
    role = models.CharField(
        max_length=10,
        choices=ROLE_CHOICES,
        default="student",
        verbose_name="Role",
        help_text="Select user role",
    )
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")

    class Meta:
        db_table = "user_profile"
        indexes = [
            models.Index(fields=["role"]),
            models.Index(fields=["created_at"]),
        ]

    def __str__(self):
        return f"{self.user} ({self.role})"
 
 
class Category(models.Model):
    category_id = models.AutoField(primary_key=True)
    category_name = models.CharField(
        max_length=100,
        verbose_name="Název",
        help_text="Zadejte název kategorie",
        validators=[TEXT_VALIDATOR],
    )
    parent_category = models.ForeignKey(
        "self",
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="subcategories",
        verbose_name="Nadřezená kategorie",
        help_text="Napište nadřazenou kategorii. Pro vytvoření nadřazené kategorie ponechte tuto část nevyplněnou",
    )
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "category"
        indexes = [
            models.Index(fields=["category_name"]),
            models.Index(fields=["parent_category"]),
            models.Index(fields=["category_id"]),
            models.Index(fields=["created_at"])
        ]
 
    def __str__(self):
        return self.category_name
 
 
class Course(models.Model):
    DIFFICULTY_CHOICES = [
        ("beginner", "Beginner"),
        ("intermediate", "Intermediate"),
        ("advanced", "Advanced"),
    ]
 
    course_id = models.AutoField(primary_key=True)
    title = models.CharField(
        max_length=200,
        verbose_name="Název",
        help_text="Zadejte název kurzu",
        validators=[TEXT_VALIDATOR],
    )
    description = models.CharField(
        max_length=2000,
        verbose_name="Popis",
        help_text="Stručně popište obsah kurzu",
    )
    difficulty = models.CharField(
        max_length=12,
        choices=DIFFICULTY_CHOICES,
        verbose_name="Náročnost",
        help_text="Vyberte úroveň náročnosti kurzu",
    )
    categories = models.ManyToManyField(
        Category,
        blank=True,
        related_name="courses",
        verbose_name="Kategorie",
        help_text="Vyberte kategorie kurzu",
    )
    img = models.ImageField(upload_to="media/course_imgs",
        null=True,
        blank=True,
        verbose_name="Miniatura kurzu",
        help_text="Nahrajte miniaturu kurzu",)
    created_by = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="courses_created",
        verbose_name="Vytvořil",
        help_text="Uživatel, který kurz vytvořil",
    )
    is_active = models.BooleanField(verbose_name="Aktivní", help_text="Určuje, jestli je kurz viditelný")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "course"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["is_active"]),
            models.Index(fields=["course_id"]),
            models.Index(fields=["title"]),
            models.Index(fields=["difficulty"]),
        ]
 
    def __str__(self):
        return self.title
 
 
class UsersInCourse(models.Model):
    ROLE_CHOICES = [
        ("teacher", "Teacher"),
        ("student", "Student"),
    ]
 
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="Uživatel", help_text="Vyberte uživatele")
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="Kurz", help_text="Vyberte kurz")
    role = models.CharField(max_length=7, choices=ROLE_CHOICES, verbose_name="Role", help_text="Vyberte roli uživatele v kurzu")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "users_in_course"
        unique_together = ("user", "course")
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["role"]),
            models.Index(fields=["course"]),
        ]
 
    def __str__(self):
        return f"{self.user} - {self.course} ({self.role})"
 
 
class Lesson(models.Model):
    lesson_id = models.AutoField(primary_key=True)
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="Kurz", help_text="Vyberte kurz, ke kterému lekce patří")
    title = models.CharField(max_length=50, verbose_name="Název", help_text="Zadejte název lekce", validators=[TEXT_VALIDATOR])
    description = models.CharField(max_length=1000, null=True, blank=True, verbose_name="Popis", help_text="Volitelný popis lekce")
    requirements = models.CharField(max_length=200, null=True, blank=True, verbose_name="Požadavky", help_text="Požadavky pro tuto lekci")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "lesson"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["title"]),
            models.Index(fields=["course"]),
        ]
 
    def __str__(self):
        return self.title
 
 
class Module(models.Model):
    id_module = models.AutoField(primary_key=True)
    id_lesson = models.ForeignKey(
        Lesson,
        on_delete=models.CASCADE,
        db_column="id_lesson",
        verbose_name="Lekce",
        help_text="Vyberte lekci, ke které modul patří",
    )
    study_text = models.TextField(null=True, blank=True, verbose_name="Studijní text", help_text="Vložte studijní text modulu")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "module"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["id_module"]),
            models.Index(fields=["id_lesson"]),
            
        ]
 
    def __str__(self):
        return f"Module {self.id_module} (Lesson: {self.id_lesson})"
 
 
class Attachment(models.Model):
    attachment_id = models.AutoField(primary_key=True)
    module = models.ForeignKey(Module, on_delete=models.CASCADE, verbose_name="Modul", help_text="Vyberte modul, ke kterému příloha patří")
    file_path = models.CharField(max_length=255, verbose_name="Cesta k souboru", help_text="Zadejte cestu k souboru")
    file_name = models.CharField(max_length=255, verbose_name="Název souboru", help_text="Zadejte název souboru")
    file_size = models.IntegerField(verbose_name="Velikost souboru", help_text="Zadejte velikost souboru v bajtech", validators=[MinValueValidator(0, "Velikost souboru nemůže být záporná")])
    file_type = models.CharField(max_length=20, verbose_name="Typ souboru", help_text="Zadejte MIME typ souboru", validators=[MIME_TYPE_VALIDATOR])
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "attachment"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["module"]),
            models.Index(fields=["file_name"]),
            models.Index(fields=["attachment_id"]),
            models.Index(fields=["file_type"]),
        ]
 
    def __str__(self):
        return self.file_name
 
 
class Calendar(models.Model):
    calendar_id = models.AutoField(primary_key=True)
    id_user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="Uživatel", help_text="Vyberte uživatele kalendáře")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "calendar"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["calendar_id"]),
            models.Index(fields=["id_user"]),
        ]
 
    def __str__(self):
        return f"Calendar {self.calendar_id} ({self.id_user})"
 
 
class Event(models.Model):
    id_event = models.AutoField(primary_key=True)
    id_calendar = models.ForeignKey(
        Calendar,
        on_delete=models.CASCADE,
        db_column="id_calendar",
        verbose_name="Kalendář",
        help_text="Vyberte kalendář události",
    )
    id_course = models.ForeignKey(
        Course,
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        verbose_name="Kurz",
        help_text="Volitelně vyberte kurz spojený s událostí",
    )
    is_global = models.BooleanField(verbose_name="Globální", help_text="Určuje, jestli je událost globální")
    title = models.CharField(max_length=200, verbose_name="Název", help_text="Zadejte název události", validators=[TEXT_VALIDATOR])
    video_call_link = models.CharField(max_length=2000, null=True, blank=True, verbose_name="Odkaz na videohovor", help_text="Vložte odkaz na videohovor")
    description = models.CharField(max_length=1000, null=True, blank=True, verbose_name="Popis", help_text="Volitelný popis události")
    event_date = models.DateField(verbose_name="Datum", help_text="Zadejte datum události")
    event_time = models.TimeField(verbose_name="Čas", help_text="Zadejte čas události")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "event"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["id_event"]),
            models.Index(fields=["id_calendar"]),
            models.Index(fields=["title"]),
            models.Index(fields=["event_date"]),
        ]
 
    def __str__(self):
        return self.title
 
 
class Message(models.Model):
    message_id = models.AutoField(primary_key=True)
    sender = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name="sent_messages",
        verbose_name="Odesílatel",
        help_text="Vyberte odesílatele zprávy",
    )
    receiver = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name="received_messages",
        verbose_name="Příjemce",
        help_text="Vyberte příjemce zprávy",
    )
    content = models.TextField(verbose_name="Obsah", help_text="Zadejte obsah zprávy")
    sent_at = models.DateTimeField(verbose_name="Odesláno", help_text="Zadejte datum a čas odeslání")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "message"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["message_id"]),
            models.Index(fields=["sender"]),
            models.Index(fields=["receiver"]),
        ]
 
    def __str__(self):
        return f"Message {self.message_id}: {self.sender} → {self.receiver}"
 
 
class CertificateType(models.Model):
    certificate_type_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255, verbose_name="Název", help_text="Zadejte název typu certifikátu", validators=[TEXT_VALIDATOR])
    description = models.TextField(verbose_name="Popis", help_text="Zadejte popis certifikátu")
    badge = models.CharField(verbose_name="Odznak", help_text="Název odznaku certifikátu")
    id_course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="Kurz", help_text="Vyberte kurz, ke kterému certifikát patří")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "certificate_type"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["name"]),
            models.Index(fields=["id_course"]),
        ]
 
    def __str__(self):
        return self.name
 
 
class UserCertificate(models.Model):
    user_certificate_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="Uživatel", help_text="Vyberte uživatele certifikátu")
    certificate_type = models.ForeignKey(CertificateType, on_delete=models.CASCADE, verbose_name="Typ certifikátu", help_text="Vyberte typ certifikátu")
    issue_date = models.DateField(verbose_name="Datum vydání", help_text="Zadejte datum vydání certifikátu")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Vytvořeno")
    updated_at = models.DateTimeField(null=True, blank=True, verbose_name="Upraveno")
 
    class Meta:
        db_table = "user_certificate"
        indexes = [
            models.Index(fields=["created_at"]),
            models.Index(fields=["user_certificate_id"]),
            models.Index(fields=["issue_date"]),
        ]
 
    def __str__(self):
        return f"{self.user} - {self.certificate_type}"
"""
    class Question(models.Model):
        question_text = models.CharField(max_length=200)
        pub_date = models.DateTimeField("date published")
        
        def __str__(self):
            return self.question_text

        def was_published_recently(self):
            return self.pub_date >= timezone.now() - datetime.timedelta(days=1)
"""

