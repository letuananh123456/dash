# Generated by Django 2.1.7 on 2019-03-29 07:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0002_auto_20190329_0327'),
    ]

    operations = [
        migrations.CreateModel(
            name='ChannelContact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number_customer', models.IntegerField(default=0)),
                ('created_time', models.DateTimeField(null=True)),
                ('distribution_channel', models.CharField(max_length=200)),
            ],
        ),
    ]
