from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from .models import AgentTotal, NewAgent, AgentChannel, Channel
from .serianlizers import *
from rest_framework import status
from django.core.exceptions import ObjectDoesNotExist
import datetime
# Create your views here.


class UpdateNumberAgencyTotal(APIView):
    permission_classes = (AllowAny,)

    def get(self, request):
        return Response('tesssst', status=status.HTTP_200_OK)

    def post(self, request):
        validate = UpdateAgencySerializer(data=request.data)

        if not validate.is_valid():
            return Response('may gui sai du lieu roi', status=status.HTTP_400_BAD_REQUEST)

        number_of_agency = validate.data['number_of_agency']
        mm = validate.data['mm']
        yyyy = validate.data['yyyy']

        AgentTotal.objects.create(number_agent=number_of_agency, created_time=datetime.datetime(yyyy, mm, 1))

        return Response('them thanh cong', status=status.HTTP_200_OK)


class UpdateNumberNewAgency(APIView):
    permission_classes = (AllowAny,)

    def get(self, request):
        return Response('tesssst', status=status.HTTP_200_OK)

    def post(self, request):
        validate = UpdateAgencySerializer(data=request.data)

        if not validate.is_valid():
            return Response('may gui sai du lieu roi', status=status.HTTP_400_BAD_REQUEST)

        number_of_agency = validate.data['number_of_agency']
        mm = validate.data['mm']
        yyyy = validate.data['yyyy']

        NewAgent.objects.create(number_agent=number_of_agency, created_time=datetime.datetime(yyyy, mm, 1))

        return Response('them thanh cong', status=status.HTTP_200_OK)


class UpdateNumberAgencyChannel(APIView):
    permission_classes = (AllowAny,)

    def get(self, request):
        return Response('tesssst', status=status.HTTP_200_OK)

    def post(self, request):
        validate = UpdateAgencyChannelSerializer(data=request.data)

        if not validate.is_valid():
            return Response('may gui sai du lieu roi', status=status.HTTP_400_BAD_REQUEST)

        number_of_agency = validate.data['number_of_agency']
        mm = validate.data['mm']
        yyyy = validate.data['yyyy']
        channel = validate.data['channel']
        try:
            dis = Channel.objects.get(id=channel)
        except ObjectDoesNotExist:
            return Response('channel not found', status=status.HTTP_404_NOT_FOUND)

        AgentChannel.objects.create(number_agent=number_of_agency, created_time=datetime.datetime(yyyy, mm, 1),
                                    distribution=dis)

        return Response('them thanh cong', status=status.HTTP_200_OK)
