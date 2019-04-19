from rest_framework import serializers


class UpdateAgencySerializer(serializers.Serializer):
    number_of_agency = serializers.IntegerField(required=True)
    mm = serializers.IntegerField(required=True)
    yyyy = serializers.IntegerField(required=True)


class UpdateAgencyChannelSerializer(serializers.Serializer):
    number_of_agency = serializers.IntegerField(required=True)
    mm = serializers.IntegerField(required=True)
    yyyy = serializers.IntegerField(required=True)
    channel = serializers.IntegerField(required=True)


class UpdateNumberCustomerSerializer(serializers.Serializer):
    number_of_customer = serializers.IntegerField(required=True)
    mm = serializers.IntegerField(required=True)
    yyyy = serializers.IntegerField(required=True)

class UpdateNumberCustomerLocationSerializer(serializers.Serializer):
    number_of_customer = serializers.IntegerField(required=True)
    mm = serializers.IntegerField(required=True)
    yyyy = serializers.IntegerField(required=True)
    location = serializers.IntegerField(required=True)

class UpdateNumberCustomerChannelSerializer(serializers.Serializer):
    number_of_customer = serializers.IntegerField(required=True)
    mm = serializers.IntegerField(required=True)
    yyyy = serializers.IntegerField(required=True)
    channel = serializers.IntegerField(required=True)

class UpdateSuccessRateSerializer(serializers.Serializer):
    number_of_customer = serializers.IntegerField(required=True)
    number_of_policy = serializers.IntegerField(required=True)
    mm = serializers.IntegerField(required=True)
    yyyy = serializers.IntegerField(required=True)


class UpdateSuccessChannelSerializer(serializers.Serializer):
    number_of_customer = serializers.IntegerField(required=True)
    number_of_policy = serializers.IntegerField(required=True)
    mm = serializers.IntegerField(required=True)
    yyyy = serializers.IntegerField(required=True)
    channel = serializers.IntegerField(required=True)