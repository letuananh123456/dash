from django.shortcuts import render, redirect
from django.views import View
from .models import MonthContact, ChannelSuccess, DaySuccess, MonthSuccess
from .models import ChannelContact, FavoriteBenefit, FavoriteProduct, Favorite_Product_Benefit
from .models import AgentTotal,DayContact, SupBenefit, SupProduct, Sup_Product_Benefit
from .models import Channel
from .models import NewAgent, LocationContact, MainBenefit, MainProduct, Main_Product_Benefit
import numpy as np
import json
from .ultils import *
class DashboardView(View):
    def get(self, request):
        return render(request, 'dashboard/index.html')


class DaycontactView(View):
    def get(self, request):
        list_contact = DayContact.objects.all()
        count_list_contact = list_contact.count()
        list_contact = list_contact[count_list_contact - 96:]
        # lis1 = list_contact.values_list('number_customer', flat=True)
        # a = np.array(lis1)
        c=[]
        b =0
        for i in list_contact:
            sub_item = {}
            b = b + i.number_customer
            sub_item['snbc'] = b
            sub_item['nbc'] = i.number_customer
            sub_item['day'] = i.get_dd_mm_yyyy
            sub_item['hh'] = i.get_hour_minute
            c.append(sub_item)
        # list_data = zip(list_contact, a, c)
        context = {
            'list_data': c

        }

        return render(request, 'dashboard/customer_contact/day_contact.html', context)


class MonthcontactView(View):
    def get(self, request):
        list_contact = MonthContact.objects.all()
        count_list_contact = list_contact.count()
        list_contact = list_contact[count_list_contact - 24:]
        last_year = list_contact[:12]
        list_current_year = list_contact[12:]
        list_data = zip(last_year, list_current_year)

        context = {
            'list_data': list_data,
            'year': list_current_year[0].get_year

        }
        return render(request, 'dashboard/customer_contact/month_contact.html', context)


class ChannelcontactView(View):
    def get(self, request):

        list_contact_truyenthong = ChannelContact.objects.filter(distribution_id=1)
        list_contact_nganhang = ChannelContact.objects.filter(distribution_id=2)

        count_list_contact_truyenthong = list_contact_truyenthong.count()
        list_contact_truyenthong = list_contact_truyenthong[count_list_contact_truyenthong - 24:]
        last_year = list_contact_truyenthong[:12]
        list_current_year = list_contact_truyenthong[12:]
        list_data_truyenthong = zip(last_year, list_current_year)

        count_list_contact_nganhang = list_contact_nganhang.count()
        list_contact_nganhang = list_contact_nganhang[count_list_contact_nganhang - 24:]
        last_year = list_contact_nganhang[:12]
        list_current_year = list_contact_nganhang[12:]
        list_data_nganhang = zip(last_year, list_current_year)

        context = {
            'list_data_truyenthong': list_data_truyenthong,
            'list_data_nganhang': list_data_nganhang,
        }
        return render(request, 'dashboard/customer_contact/channel_contact.html', context)


class LocationcontactView(View):
    def get(self, request):
        list_customer = LocationContact.objects.all()
        count_list_contact = list_customer.count()
        list_customer = list_customer[count_list_contact - 63:]
        name_province = list_customer.values_list('location__name_province', flat=True)
        lis1 = list_customer.values_list('number_customer', flat=True)
        a = np.array(lis1)
        total_array = np.full(lis1.count(), sum(lis1))
        weight = np.round(((lis1 / total_array) * 100), 2)
        list_data = zip(list(name_province), a, weight)

        context = {
            'list_data': list_data

        }
        return render(request, 'dashboard/customer_contact/location_contact.html', context)


class DaysuccessView(View):
    def get(self, request):
        list_customer = DaySuccess.objects.all()
        count_list_customer = list_customer.count()
        last_month = list_customer[count_list_customer - 30:]
        last_m_1 = last_month.values_list('number_customer', flat=True)
        last_m_1_array = np.array(last_m_1)
        sum_last_m_1 = sum(last_m_1_array)
        last_m_2 = last_month.values_list('number_policy', flat=True)
        last_m_2_array = np.array(last_m_2)
        sum_last_m_2 = sum(last_m_2_array)
        ratio_30 = np.round((sum_last_m_2/sum_last_m_1)*100,2)
        list_data_30 = [sum_last_m_1, sum_last_m_2, ratio_30]
        last_week = list_customer[count_list_customer - 7:]
        last_w_1 = last_week.values_list('number_customer', flat=True)
        last_w_1_array = np.array(last_w_1)
        sum_last_w_1 = sum(last_w_1_array)
        last_w_2 = last_week.values_list('number_policy', flat=True)
        last_w_2_array = np.array(last_w_2)
        sum_last_w_2 = sum(last_w_2_array)
        ratio_7 = np.round((sum_last_w_2 / sum_last_w_1)*100,2)
        list_data_7 = [sum_last_w_1, sum_last_w_2, ratio_7]
        last_tree_day = list_customer[count_list_customer - 3:]
        last_tree_1 = last_tree_day.values_list('number_customer', flat=True)
        last_tree_1_array = np.array(last_tree_1)
        sum_last_tree_1 = sum(last_tree_1_array)
        last_tree_2 = last_tree_day.values_list('number_policy', flat=True)
        last_tree_2_array = np.array(last_tree_2)
        sum_last_tree_2 = sum(last_tree_2_array)
        ratio_3 = np.round((sum_last_tree_2 / sum_last_tree_1)*100,2)
        list_data_3 = [sum_last_tree_1, sum_last_tree_2, ratio_3]
        last_one_day = list_customer[count_list_customer - 1:]
        last_one_1 = last_one_day.values_list('number_customer', flat=True)
        last_one_1_array = np.array(last_one_1)
        sum_last_one_1 = sum(last_one_1_array)
        last_one_2 = last_one_day.values_list('number_policy', flat=True)
        last_one_2_array = np.array(last_one_2)
        sum_last_one_2 = sum(last_one_2_array)
        ratio_1 = np.round((sum_last_one_2/sum_last_one_1)*100,2)
        list_data_1 = [sum_last_one_1, sum_last_one_2, ratio_1]
        context = {
            'list_data_30': list_data_30,
            'list_data_7': list_data_7,
            'list_data_3': list_data_3,
            'list_data_1': list_data_1,
        }
        return render(request, 'dashboard/success_rate/day_success.html', context)



class MonthsuccessView(View):
    def get(self, request):
        list_customer = MonthSuccess.objects.all()
        count_list_customer = list_customer.count()
        last_list = list_customer[count_list_customer - 12:]
        last_customer = last_list.values_list('number_customer', flat=True)
        last_customer_array = np.array(last_customer)
        last_policy = last_list.values_list('number_policy', flat=True)
        last_policy_array = np.array(last_policy)
        ratio = np.round((last_policy_array/last_customer_array)*100,2)
        list_data = zip(last_customer_array, last_policy_array, ratio)

        context = {
            'list_data': list_data

        }
        return render(request, 'dashboard/success_rate/month_success.html', context)



class ChannelsuccessView(View):
    def get(self, request):
        yyyy = get_year()
        print_array = []

        for i in range(1, 13):
            sub_item = {}
            sub_item['m'] = i
            sub_data = number_customer_to_m(i, yyyy)
            sub_item['data'] = sub_data
            print_array.append(sub_item)
            last_data = get_line_chart_print_value()
        context = {
            'list_data': print_array,
            'last_data': last_data

        }
        return render(request, 'dashboard/success_rate/channel_success.html', context)


class AgenttotalView(View):
    def get(self, request):
            list_agent = AgentTotal.objects.all()
            count_list_agent = list_agent.count()
            list_agent = list_agent[count_list_agent - 24:]
            last_year = list_agent[:12]
            list_current_year = list_agent[12:].values_list()

            #ratio = list_current_year.number_agent/last_year.number_agent
            lis1 = last_year.values_list('number_agent', flat=True)
            lis2 = list_current_year.values_list('number_agent', flat=True)
            li1 = [i for i in lis1]
            li2 = [i for i in lis2]
            a = np.array(li1)
            b = np.array(li2)
            ratio = np.round((a/b)*100,2)
            list_data = zip(lis1, lis2, ratio)
            diagram1 = json.dumps(li1)
            diagram2 = json.dumps(li2)
            context = {
                'list_data': list_data,
                'diagram1': diagram1,
                'diagram2': diagram2
            }
            return render(request, 'dashboard/agent_statistics/agent_total.html', context)


class NewagentView(View):
    def get(self, request):
        list_agent = NewAgent.objects.all()
        count_list_agent = list_agent.count()
        list_agent = list_agent[count_list_agent - 24:]
        last_year = list_agent[:12]
        list_current_year = list_agent[12:].values_list()

        # ratio = list_current_year.number_agent/last_year.number_agent
        lis1 = last_year.values_list('number_agent', flat=True)
        lis2 = list_current_year.values_list('number_agent', flat=True)
        li1 = [i for i in lis1]
        li2 = [i for i in lis2]
        a = np.array(li1)
        b = np.array(li2)
        ratio = np.round((a/b)*100,2)
        list_data = zip(lis1, lis2, ratio)
        diagram1 = json.dumps(li1)
        diagram2 = json.dumps(li2)
        context = {
            'list_data': list_data,
            'diagram1': diagram1,
            'diagram2': diagram2
        }
        return render(request, 'dashboard/agent_statistics/new_agent.html', context)


class AgentchannelView(View):
    def get(self, request):
        yyyy = get_year()
        print_array = []
        last_zip_object = []

        for i in range(1, 13):
            sub_item = {}
            sub_item['m'] = i
            sub_data = sum_agency_to_m(i, yyyy)
            sub_item['data'] = sub_data
            print_array.append(sub_item)
            h = [list(a) for a in sum_agency_to_m(i, yyyy)]
            if len(h) > 0:
                last_zip_object = h

        last_zip_object = np.array(last_zip_object)
        split = np.hsplit(last_zip_object, 3)
        ga = split[2].astype(float)
        last_list_data = np.around(ga, 0)
        context = {
            'list_data': print_array,
            'last_list_data': last_list_data
        }
        return render(request, 'dashboard/agent_statistics/agent_channel.html', context)


class MainproductView(View):
    def get(self, request):
        list_sp = [

        ]

        products = MainProduct.objects.all()
        sum_like = sum(products.values_list('number_customer', flat=True))
        for item in products:
            subitem = {}
            subitem['name_product'] = item.name_product
            subitem['like'] = item.number_customer
            subitem['benefit'] = Main_Product_Benefit.objects.filter(
                product_id=item.id).values_list('benefit__name_benefit', flat=True)
            subitem['time'] = item.created_time
            subitem['tytrong'] = np.round(item.number_customer/sum_like*100,2)

            list_sp.append(subitem)


        context = {
            'list_sp': list_sp

        }
        return render(request, 'dashboard/product_statistics/main_product.html', context)


class SupproductView(View):
    def get(self, request):
        list_sp = [

        ]

        products = SupProduct.objects.all()
        sum_like = sum(products.values_list('number_customer', flat=True))
        for item in products:
            subitem = {}
            subitem['name_product'] = item.name_product
            subitem['like'] = item.number_customer
            subitem['benefit'] = Sup_Product_Benefit.objects.filter(
                product_id=item.id).values_list('benefit__name_benefit', flat=True)
            subitem['time'] = item.created_time
            subitem['tytrong'] = np.round(item.number_customer / sum_like * 100, 2)

            list_sp.append(subitem)

        context = {
            'list_sp': list_sp

        }
        return render(request, 'dashboard/product_statistics/sup_product.html', context)


class FavoriteproductView(View):
    def get(self, request):
        list_sp = [

        ]

        products = FavoriteProduct.objects.all()
        for item in products:
            subitem = {}
            subitem['time'] = item.created_time
            subitem['name_product'] = item.name_product
            subitem['sa'] = item.sa
            subitem['policy_term'] = item.policy_term
            subitem['payment_term'] = item.payment_term
            subitem['ways_to_get_benefit'] = item.ways_to_get_benefit
            subitem['benefit'] = Favorite_Product_Benefit.objects.filter(
                product_id=item.id).values_list('benefit__name_benefit', flat=True)
            list_sp.append(subitem)

        context = {
            'list_sp': list_sp

        }
        return render(request, 'dashboard/product_statistics/favorite_product.html', context)


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


class SearchagentView(View):
    def get(self, request):
        return render(request, 'dashboard/search_agent/search.html')