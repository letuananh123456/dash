from rest_framework import serializers


class UpdateAgencySerializer(serializers.Serializer):
    number_of_agency = serializers.IntegerField(required=True)
    mm = serializers.IntegerField(required=True)
    yyyy = serializers.IntegerField(required=True)
