from django.urls import path
from app.dashboard import views as dash_view
from . import  api as api_view
app_name = 'dashboard'

urlpatterns = [
    path('', dash_view.DashboardView.as_view(), name='dashboard'),
    path('day-contact/', dash_view.DaycontactView.as_view(), name='daycontact'),
    path('month-contact/', dash_view.MonthcontactView.as_view(), name='monthcontact'),
    path('channel-contact/', dash_view.ChannelcontactView.as_view(), name='channelcontact'),
    path('location-contact/', dash_view.LocationcontactView.as_view(), name='locationcontact'),
    path('day-success/', dash_view.DaysuccessView.as_view(), name='daysuccess'),
    path('month-success/', dash_view.MonthsuccessView.as_view(), name='monthsuccess'),
    path('channel-success/', dash_view.ChannelsuccessView.as_view(), name='channelsuccess'),
    path('agent-total/', dash_view.AgenttotalView.as_view(), name='agenttotal'),
    path('new-agent/', dash_view.NewagentView.as_view(), name='newagent'),
    path('agent-channel/', dash_view.AgentchannelView.as_view(), name='agentchannel'),
    path('main-product/', dash_view.MainproductView.as_view(), name='mainproduct'),
    path('sup-product/', dash_view.SupproductView.as_view(), name='supproduct'),
    path('favorite-product/', dash_view.FavoriteproductView.as_view(), name='favoriteproduct'),
    path('calendar/', dash_view.CalendarView.as_view(), name='calendar'),
    path('inbox/', dash_view.InboxView.as_view(), name='inbox'),
    path('compose/', dash_view.ComposeView.as_view(), name='compose'),
    path('read/', dash_view.ReadView.as_view(), name='read'),
    path('user-agent/', dash_view.UseragentView.as_view(), name='useragent'),
    path('search-agent/', dash_view.SearchagentView.as_view(), name='searchagent'),

    #api url

    path('api/update-agency-total/', api_view.UpdateNumberAgencyTotal.as_view()),
    path('api/update-agency-new/', api_view.UpdateNumberNewAgency.as_view()),
    path('api/update-agency-channel/', api_view.UpdateNumberAgencyChannel.as_view()),
    path('api/update-number-customer-day/', api_view.UpdateNumberCustomerDay.as_view()),
    path('api/update-number-customer-month/', api_view.UpdateNumberCustomerMonth.as_view()),
    path('api/update-number-customer-location/', api_view.UpdateNumberCustomerLocation.as_view()),
    path('api/update-number-customer-channel/', api_view.UpdateNumberCustomerChannel.as_view()),
    path('api/update-day-success/', api_view.UpdateDaySuccess.as_view()),
    path('api/update-month-success/', api_view.UpdateMonthSuccess.as_view()),
    path('api/update-channel-success/', api_view.UpdateSuccessChannel.as_view()),



]