from django.contrib import admin

# Register your models here.
from .models import Student
admin.site.site_header="USI"
admin.site.site_title="USI"
admin.site.index_title="USI"

class studentAdmin(admin.ModelAdmin):
    list_display=['id','f_name','l_name','age','gpa','level','status','report']
    list_display_links=['id','f_name']
    list_editable=['l_name']
    search_fields=['f_name','l_name']
    list_filter=['level','status']
    fields=['f_name','l_name','age','gpa','level','status','report','file_report','image','classroom']
    list_per_page=3
admin.site.register(Student,studentAdmin)