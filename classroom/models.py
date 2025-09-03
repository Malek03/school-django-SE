from django.db import models

# Create your models here.

class Classroom(models.Model):
    name=models.CharField(max_length=30)
    floor=models.IntegerField()

    def __str__(self):
        return self.name