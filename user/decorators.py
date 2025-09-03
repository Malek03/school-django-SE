from django.http import HttpResponseForbidden
from django.shortcuts import redirect
def isadmin(view_func):
    def wrapper_func(request,*args,**kwargs):
        if request.user.groups.exists():
            group=request.user.groups.all()[0].name
            if group=='admin':
                return view_func(request,*args,**kwargs)
            else:
                return HttpResponseForbidden('401 Unuthorized')
        else:
            return HttpResponseForbidden('401 Unuthorized')
    return wrapper_func

def islogin(view_func):
    def wrapper_func(request,*args,**kwargs):
        if request.user.is_authenticated:
            return redirect('home:home')
        else:
            return view_func(request,*args,**kwargs)
    return wrapper_func