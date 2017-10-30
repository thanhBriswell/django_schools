from django.db import models

from .Students import Students

class Points(models.Model):
    student = models.ForeignKey(Students, on_delete=models.CASCADE)
    math = models.FloatField()
    english = models.FloatField()
    geography = models.FloatField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    