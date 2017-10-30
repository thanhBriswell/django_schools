from django.conf.urls import url

from . import views
# app_name = 'schools'
urlpatterns = [
    url(r'^students/$', views.index, name='student_index'),
    url(r'students/edit/(?P<student_id>[0-9]+)', views.student_detail, name='student_detail'),
    url(r'students/add', views.student_add, name='student_add'),
]
