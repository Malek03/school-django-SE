from django.shortcuts import render,redirect
from .models import Classroom
from django.contrib.auth.decorators import login_required
from user.decorators import isadmin
# Create your views here.

# @login_required(login_url='user:login')
def read_classroom(request):
    classrooms=Classroom.objects.all()
    classroom_count=classrooms.count()
    return render(request,'allClassroom.html',{"classrooms":classrooms,"classroom_count":classroom_count})

# @login_required(login_url='user:login')
def show_students(request,id):
    classroom=Classroom.objects.get(id=id)
    students=classroom.student_set.all()
    students_count=students.count()
    return render(request,'classroom_students.html',{"students":students,"students_count":students_count,"classroom":classroom})

# @login_required(login_url='user:login')
# @isadmin
def insert_classroom(request):
    if(request.method=='POST'):
        name=request.POST.get('name')
        floor=request.POST.get('floor')
        new_classroom=Classroom(name=name,floor=floor)
        new_classroom.save()
        return redirect('student:home')
    else:
        return render(request,'insert_classroom.html')