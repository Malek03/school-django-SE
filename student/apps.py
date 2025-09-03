from django.apps import AppConfig
from suit.apps import DjangoSuitConfig


class StudentConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'student'


# class SuitConfig(DjangoSuitConfig):
#     layout = 'horizental'
#     menu_position = 'left'