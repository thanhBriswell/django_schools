# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-10-10 01:34
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schools', '0002_auto_20171009_1416'),
    ]

    operations = [
        migrations.AlterField(
            model_name='students',
            name='birthday',
            field=models.DateField(blank=True),
        ),
    ]
