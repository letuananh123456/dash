# Generated by Django 2.1.7 on 2019-04-03 07:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0020_channel_color'),
    ]

    operations = [
        migrations.CreateModel(
            name='DaySuccess',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number_customer', models.IntegerField(default=0)),
                ('number_policy', models.IntegerField(default=0)),
                ('created_time', models.DateTimeField(null=True)),
            ],
        ),
    ]
