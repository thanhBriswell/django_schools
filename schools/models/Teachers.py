from django.db import models

class Teachers(models.Model):
    name = models.CharField(max_length=50)
    birthday = models.DateField(blank=True)
    address = models.CharField(max_length=200)
    salary = models.IntegerField()
    class_id = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
