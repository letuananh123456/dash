from django.shortcuts import render, redirect
from django.views import View


class DashboardView(View):
    def get(self, request):
        return render(request, 'dashboard/index.html')


class DaycontactView(View):
    def get(self, request):
        return render(request, 'dashboard/customer_contact/day_contact.html')

class MonthcontactView(View):
    def get(self, request):
        return render(request, 'dashboard/customer_contact/month_contact.html')

class ChannelcontactView(View):
    def get(self, request):
        return render(request, 'dashboard/customer_contact/channel_contact.html')

class LocationcontactView(View):
    def get(self, request):
        return render(request, 'dashboard/customer_contact/location_contact.html')

class DaysuccessView(View):
    def get(self, request):
        return render(request, 'dashboard/success_rate/day_success.html')

class MonthsuccessView(View):
    def get(self, request):
        return render(request, 'dashboard/success_rate/month_success.html')

class AgenttotalView(View):
    def get(self, request):
        return render(request, 'dashboard/agent_statistics/agent_total.html')

class NewagentView(View):
    def get(self, request):
        return render(request, 'dashboard/agent_statistics/new_agent.html')

class AgentchannelView(View):
    def get(self, request):
        return render(request, 'dashboard/agent_statistics/agent_channel.html')

class MainproductView(View):
    def get(self, request):
        return render(request, 'dashboard/product_statistics/main_product.html')

class SupproductView(View):
    def get(self, request):
        return render(request, 'dashboard/product_statistics/sup_product.html')

class FavoriteproductView(View):
    def get(self, request):
        return render(request, 'dashboard/product_statistics/favorite_product.html')

class CalendarView(View):
    def get(self, request):
        return render(request, 'dashboard/calendar/calendar.html')

class InboxView(View):
    def get(self, request):
        return render(request, 'dashboard/mailbox/inbox.html')

class ComposeView(View):
    def get(self, request):
        return render(request, 'dashboard/mailbox/compose.html')

class ReadView(View):
    def get(self, request):
        return render(request, 'dashboard/mailbox/read.html')

class UseragentView(View):
    def get(self, request):
        return render(request, 'dashboard/user_agent/user.html')

class  SearchagentView(View):
    def get(self, request):
        return render(request, 'dashboard/search_agent/search.html')