from django.db import models
from django.contrib.auth.models import User


class customer_contact(models.Model):
    id_agent = models.ForeignKey(User, on_delete=models.CASCADE)
    name_agent = models.CharField(max_length=255)
    name_customer = models.CharField(max_length=255)
    time_contact = models.DateTimeField(auto_now_add=True)
    location = models.IntegerField(default=0)


class agent_info(models.Model):
    id_agent = models.ForeignKey(User, on_delete=models.CASCADE)
    name_agent = models.CharField(max_length=255)
    time_create = models.DateTimeField(auto_now_add=True)
    link_image = models.CharField(max_length=255)

class favorite_product(models.Model):
    id_product = models.IntegerField(default=0)
    name_product = models.CharField(max_length=255)
    po_term = models.IntegerField(default=0)
    payment_term = models.IntegerField(default=0)
    benefit = models.TextField(blank=True, default='')
    type_receive = models.IntegerField(default=0)
    sa = models.IntegerField(default=0)


class product(models.Model):
    id_product = models.IntegerField(default=0)
    name_product = models.CharField(max_length=255)
    type_product = models.IntegerField(default=0)
    benefit = models.TextField(blank=True, default='')




