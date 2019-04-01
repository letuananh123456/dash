from django.utils.timezone import now
from .models import AgentChannel
import numpy as np


def get_year():
    return now().year


def sum_agency_to_m(mm, yyyy):
    agenlist = AgentChannel.objects.filter(
        created_time__year=yyyy, created_time__month=mm)
    number_agenlist = agenlist.values_list('number_agent', flat=True)
    name_chanel = agenlist.values_list('distribution__name_chanel', flat=True)
    num_agenlist = np.array(number_agenlist)
    total_array = np.full(number_agenlist.count(), sum(number_agenlist))
    weight = np.round(((num_agenlist/total_array)*100), 2)
    return zip(list(name_chanel), total_array, weight)

