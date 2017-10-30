from django import forms

from django.core.exceptions import ValidationError
from django.utils.translation import ugettext_lazy as _

import datetime #for checking renewal date range.

# def validate_comment_word_count(value):
#       count = len(value.split())
#       if count < 30:
#             raise forms.ValidationError(('Please provide at least a 30 word message, %(count)s words is not descriptive enough'), params={'count': count},)

class StudentForm(forms.Form):
    name = forms.CharField(widget=forms.TextInput(attrs={ 'class': 'form-control'}), label='User Name', max_length=50)
    # name = forms.CharField(widget=forms.TextInput(attrs={ 'class': 'form-control'}), label='User Name', validators=[validate_comment_word_count])
    class_name = forms.CharField(widget=forms.TextInput(attrs={ 'class': 'form-control'}), label="Class")
    address = forms.CharField(widget=forms.TextInput(attrs={ 'class': 'form-control' }), label="Address")
    birthday = forms.DateField(widget=forms.DateInput(attrs={ 'class': 'form-control', 'type': 'date' }), label="Birthday")
