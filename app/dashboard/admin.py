from django.contrib import admin
from .models import MonthContact
from .models import Channel
from .models import ChannelContact
# Register your models here.
admin.site.register(MonthContact)
admin.site.register(Channel)
admin.site.register(ChannelContact)