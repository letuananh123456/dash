# Generated by Django 2.1.7 on 2019-04-05 02:18

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0025_auto_20190404_0732'),
    ]

    operations = [
        migrations.AlterField(
            model_name='daycontact',
            name='created_time',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2019, 4, 5, 2, 18, 49, 423133)),
        ),
    ]