# Generated by Django 2.1.7 on 2019-04-19 05:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0036_auto_20190417_0525'),
    ]

    operations = [
        migrations.AlterField(
            model_name='favoriteproduct',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
