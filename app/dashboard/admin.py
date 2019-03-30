from django.contrib import admin
from .models import MonthContact
from .models import Channel
from .models import ChannelContact
from .models import AgentTotal


class ChannelContactAdmin(admin.ModelAdmin):
    list_display = ('id', 'distribution', 'number_customer', 'created_time')


class ChannelAdmin(admin.ModelAdmin):
    list_display = ('id', 'name_chanel')


class AgentTotalAdmin(admin.ModelAdmin):
    list_display = ('id', 'number_agent', 'created_time')


# Register your models here.
admin.site.register(MonthContact)
admin.site.register(Channel, ChannelAdmin)
admin.site.register(ChannelContact, ChannelContactAdmin)
admin.site.register(AgentTotal, AgentTotalAdmin)
