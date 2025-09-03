from django.shortcuts import render,redirect
from .forms import RegisterForm
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from user.decorators import islogin
# Create your views here.

def register(request):
    if request.method == 'POST':
        form=RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            user=form.cleaned_data.get('username')
            messages.success(request,'Account was created for '+ user)
            return redirect('user:login')
        else:
            context={'form':form}
            messages.error(request,'Invalid username or password')
            return render(request,'register.html',context)
    else:
        form=RegisterForm()
        context={'form':form}
        return render(request,'register.html',context)

# @islogin
def userlogin(request):
    if request.method=="POST":
        email=request.POST.get('email')
        password=request.POST.get('password')
        username=User.objects.get(email=email).username
        user=authenticate(request,username=username,password=password)
        if user is not None:
            login(request,user)
            return redirect('home:home')
        else:
            messages.error(request,'Invalid username or password')
            return redirect('user:login')
    else:
        return render(request,'login.html')


def userlogout(request):
    logout(request)
    return redirect('user:login')