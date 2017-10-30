from django.shortcuts import render
from django.template import loader
from django.http import Http404, HttpResponseRedirect
from datetime import datetime

from ..models import Teachers

def index(request):
    teachers = Teachers.objects.order_by('-name')
    context = {
        'teachers': teachers
    }

    return render(request, 'teachers/index.html', context)
