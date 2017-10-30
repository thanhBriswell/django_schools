from django.db import models

class Classes(models.Model):
    name = models.CharField(max_length=10)
    special_flg = models.SmallIntegerField()
    number = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
