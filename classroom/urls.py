from django.urls import path
from . import views

app_name='classroom'
urlpatterns = [
    path('allclasses/',views.read_classroom,name='classrooms'),
    path('add/',views.insert_classroom,name='newClass'),
    path('all/<int:id>/',views.show_students,name='students'),
]
