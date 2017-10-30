from django.shortcuts import render
from django.template import loader # get template
from django.http import Http404, HttpResponseRedirect # redirect
from datetime import datetime # use in get date time
from django.core.urlresolvers import reverse

from ..forms import StudentForm # form in django

from ..models import Students # models

# Create your views here.
def index(request):
    students_list = Students.objects.order_by('-class_name', '-name')
    context = {
        'students_list': students_list,
        'title': 'Students List'
    }

    return render(request, 'students/index.html', context)

def student_detail(request, student_id):
    # raise Exception(student) # debug in django
    try:
        student = Students.objects.get(pk=student_id)
    except Students.DoesNotExist:
        raise Http404("Student does not exist")

    if request.method == 'POST':
        student.name = request.POST['name']
        student.class_name = request.POST['class_name']
        student.birthday = request.POST['birthday']
        student.save()

        return HttpResponseRedirect(reverse('student_index'))

    return render(request, 'students/detail.html', { 'student': student, 'title': 'Student Edit' })

def student_add(request):
    if request.method == 'POST':
        form = StudentForm(request.POST)
        if form.is_valid():
            student = Students(
                name = request.POST['name'],
                address = request.POST['address'],
                class_name = request.POST['class_name'],
                birthday = request.POST['birthday']
            )
            student.save()

            return HttpResponseRedirect(reverse('student_index'))
        else:
            pass
    else:
        form = StudentForm()

    return render(request, 'students/add.html', { 'form': form, 'title': 'Student Add' })
