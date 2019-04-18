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