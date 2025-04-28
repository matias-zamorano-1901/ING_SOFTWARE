from django.contrib import admin
from .models import Habitacion, Reserva, Cliente

admin.site.register(Habitacion)
admin.site.register(Reserva)
admin.site.register(Cliente)