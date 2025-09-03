from django.shortcuts import render,redirect
from .data import context
from .models import Student
from classroom.models import Classroom
from django.core.exceptions import ValidationError
from django.contrib.auth.decorators import login_required

@login_required(login_url='user:login')
def home(request):
    return render(request,'home.html')



@login_required(login_url='user:login')
def read(request):
    status=request.GET.get('q')
    if status== 'all' or status==None:
        Students=Student.objects.all()
    elif status:
        Students=Student.objects.filter(status=status)
    Students_count= Students.count()
    return render(request,'allStudent.html',{"Students":Students,"Students_count":Students_count})


@login_required(login_url='user:login')
def read_one(request,id):
    student=Student.objects.first()
    student=Student.objects.get(id=id)
    return render(request,'student_one.html',{"student":student})


@login_required(login_url='user:login')
def create(request):
    if(request.method == 'POST'):
        f_name = request.POST.get('f_name')
        l_name = request.POST.get('l_name')
        age = request.POST.get('age')
        gpa = request.POST.get('gpa')
        level = request.POST.get('level')
        status = request.POST.get('status')
        report = request.POST.get('report')
        image=request.FILES.get('image')
        file_report=request.FILES.get('repo')
        classroom_id = request.POST.get('classroom')
        classroom = Classroom.objects.get(id=classroom_id)
        new_student = Student(f_name=f_name,l_name=l_name, age=age, gpa=gpa,level=level, status=status, report=report,file_report=file_report,image=image,classroom=classroom)
        try:
            new_student.full_clean()   # يشغل كل الـ validators
            new_student.save()
            return redirect('student:students')
        except ValidationError as e:
            # e.message_dict يحتوي الأخطاء مفصلة لكل حقل
            errors = e.message_dict  
            classes = Classroom.objects.all()
            return render(request, 'insert_student.html', {
                "classes": classes,
                "errors": errors,
                "old": request.POST   # عشان ترجع البيانات القديمة للفورم
            })
    else:
        classes=Classroom.objects.all()
        return render(request,'insert_student.html',{"classes":classes})


@login_required(login_url='user:login')
def update(request,id):
    if(request.method == 'POST'):
        student=Student.objects.get(id=id)
        student.f_name = request.POST.get('f_name')
        student.l_name = request.POST.get('l_name')
        student.age = request.POST.get('age')
        student.gpa = request.POST.get('gpa')
        student.level = request.POST.get('level')
        student.status = request.POST.get('status')
        student.report = request.POST.get('report')
        student.save()
        return render(request,'messages/updated.html')
    else:
        student=Student.objects.get(id=id)
        return render(request,'update_student.html',{"student":student})


@login_required(login_url='user:login')
def delete(request,id):
    Student.objects.get(id=id).delete()
    return redirect('student:students')