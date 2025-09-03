from django.db import models
from classroom.models import Classroom
from .validators import ext_validator,f_name_validetor,validate_image_mimetype


class Student(models.Model):
    levels=(("1st","1st"),
            ("2nd","2nd"),
            ("3rd","3rd"),
            ("4th","4th"),
            ("5th","5th"))
    f_name=models.CharField(max_length=30,blank=False,null=False,validators=[f_name_validetor])
    l_name=models.CharField(max_length=30)
    age=models.IntegerField()
    level=models.CharField(choices=levels,max_length=20)
    gpa=models.DecimalField(max_digits=4,decimal_places=2)
    status=models.BooleanField(null=False)
    report=models.TextField(null=True,blank=True)
    file_report=models.FileField(null=True,upload_to='Files/%y/%m/')
    image=models.ImageField(null=True,upload_to='images/%y/%m',validators=[validate_image_mimetype])
    classroom=models.ForeignKey(Classroom,on_delete=models.CASCADE,null=True)
    def delete(self):
        self.image.delete()
        self.file_report.delete()
        super().delete()


    def __str__(self):
        return f"{self.f_name} {self.l_name}"