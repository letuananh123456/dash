# Generated by Django 2.1.4 on 2019-02-03 07:21

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='ConfirmEmailToken',
            fields=[
                ('token', models.CharField(max_length=128, primary_key=True, serialize=False, verbose_name='token')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='confirm_email_token', to=settings.AUTH_USER_MODEL, verbose_name='user')),
            ],
            options={
                'db_table': 'confirm_email_token',
            },
        ),
        migrations.CreateModel(
            name='LoginHistory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('start_date', models.DateField(auto_now_add=True)),
                ('end_date', models.DateField(auto_now=True)),
                ('num_date', models.IntegerField(default=1)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'login_history',
            },
        ),
        migrations.CreateModel(
            name='Notification',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.TextField(blank=True, default='')),
                ('body', models.TextField(blank=True, default='')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'notification',
                'ordering': ['-created_at'],
            },
        ),
        migrations.CreateModel(
            name='ResetToken',
            fields=[
                ('reset_token', models.CharField(max_length=10, primary_key=True, serialize=False, verbose_name='Reset token')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='reset_token', to=settings.AUTH_USER_MODEL, verbose_name='user')),
            ],
            options={
                'db_table': 'reset_token',
            },
        ),
        migrations.CreateModel(
            name='Token',
            fields=[
                ('key', models.CharField(max_length=128, primary_key=True, serialize=False, verbose_name='Key')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='tokens', to=settings.AUTH_USER_MODEL, verbose_name='User')),
            ],
            options={
                'db_table': 'token',
            },
        ),
        migrations.CreateModel(
            name='UserNotification',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('is_read', models.BooleanField(default=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('notification', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='user_notifications', to='users.Notification')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'user_notification',
                'ordering': ['-created_at'],
            },
        ),
    ]
