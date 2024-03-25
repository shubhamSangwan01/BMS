from django.db import models

class Station(models.Model):
    station_name = models.CharField(max_length=100, primary_key=True)
    onboard_frequency = models.IntegerField()
    offboard_frequency = models.IntegerField()


class Passengers(models.Model):
    station_name = models.CharField(max_length=100, primary_key=True)
    onboard_frequency = models.IntegerField()
    offboard_frequency = models.IntegerField()


class Journey(models.Model):
    start_station = models.CharField(max_length=100)
    end_station = models.CharField(max_length=100)
    available_seats = models.IntegerField()
    total_passengers = models.IntegerField()


class Meta:
        app_label = 'bmsBackend'

# test