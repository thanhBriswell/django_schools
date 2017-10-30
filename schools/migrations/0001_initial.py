# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-10-09 07:10
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Points',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('math', models.FloatField()),
                ('english', models.FloatField()),
                ('geography', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='Students',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('address', models.CharField(max_length=200)),
                ('class_name', models.CharField(max_length=20)),
                ('birthday', models.DateField(verbose_name='birth day')),
            ],
        ),
        migrations.AddField(
            model_name='points',
            name='student_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schools.Students'),
        ),
    ]
