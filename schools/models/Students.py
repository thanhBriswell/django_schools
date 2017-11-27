from django.db import models

# Create your models here.
class Students(models.Model):
    name = models.CharField(max_length=50)
    address = models.CharField(max_length=200)
    class_name = models.CharField(max_length=20)
    birthday = models.DateField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
