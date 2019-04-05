from django.contrib import admin
from .models import MonthContact
from .models import Channel
from .models import ChannelContact
from .models import AgentTotal
from .models import NewAgent
from .models import AgentChannel, Province, LocationContact
from .models import ChannelSuccess, DaySuccess, MonthSuccess, DayContact

class ChannelContactAdmin(admin.ModelAdmin):
    list_display = ('id', 'distribution', 'number_customer', 'created_time')


class ChannelAdmin(admin.ModelAdmin):
    list_display = ('id', 'name_chanel')


class AgentTotalAdmin(admin.ModelAdmin):
    list_display = ('id', 'number_agent', 'created_time')


class NewAgentAdmin(admin.ModelAdmin):
    list_display = ('id', 'number_agent', 'created_time')


class AgentChannelAdmin(admin.ModelAdmin):
    list_display = ('id', 'distribution', 'number_agent', 'created_time')

class ChannelSuccessAdmin(admin.ModelAdmin):
    list_display = ('id', 'distribution', 'created_time', 'number_customer', 'number_policy')

class DaySuccessAdmin(admin.ModelAdmin):
    list_display = ('id', 'created_time', 'number_customer', 'number_policy')

class MonthSuccessAdmin(admin.ModelAdmin):
    list_display = ('id', 'created_time', 'number_customer', 'number_policy')

class DayContactAdmin(admin.ModelAdmin):
    list_display = ('id', 'number_customer', 'created_time')

class ProvinceAdmin(admin.ModelAdmin):
    list_display = ('id', 'name_province')

class LocationContactAdmin(admin.ModelAdmin):
    list_display = ('id', 'location', 'number_customer', 'created_time')




# Register your models here.
admin.site.register(MonthContact)
admin.site.register(Channel, ChannelAdmin)
admin.site.register(ChannelContact, ChannelContactAdmin)
admin.site.register(AgentTotal, AgentTotalAdmin)
admin.site.register(NewAgent, NewAgentAdmin)
admin.site.register(AgentChannel, AgentChannelAdmin)
admin.site.register(ChannelSuccess, ChannelSuccessAdmin)
admin.site.register(DaySuccess, DaySuccessAdmin)
admin.site.register(MonthSuccess, MonthSuccessAdmin)
admin.site.register(DayContact, DayContactAdmin)
admin.site.register(Province, ProvinceAdmin)
admin.site.register(LocationContact, LocationContactAdmin)