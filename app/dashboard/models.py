from django.db import models
from django.contrib.auth.models import User


class MonthContact(models.Model):
    number_customer = models.IntegerField(default=0)
    created_time = models.DateTimeField(null=True)

    def __str__(self):
        return 'Khách hàng tiếp cận %s '%self.created_time

    @property
    def get_year(self):
        return self.created_time.year


class Channel(models.Model):
    name_chanel = models.CharField(max_length=200)

    def __str__(self):
        return self.name_chanel


class ChannelContact(models.Model):
    distribution = models.ForeignKey(Channel, on_delete=models.CASCADE)
    number_customer = models.IntegerField(default=0)
    created_time = models.DateTimeField(null=True)

    def __str__(self):
        return 'Khách hàng tiếp cận %s '%self.created_time


