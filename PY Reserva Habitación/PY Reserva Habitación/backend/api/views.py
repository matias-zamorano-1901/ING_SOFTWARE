from django.shortcuts import render

from django.http import JsonResponse
from .models import Habitacion, Reserva

def lista_habitaciones(request):
    habitaciones = Habitacion.objects.all()
    data = [{"id": h.habitacion_id, "tipo": h.tipo} for h in habitaciones]
    return JsonResponse(data, safe=False)

def crear_reserva(request):
    if request.method == 'POST':
        # Lógica para procesar reservas (usando DRF o forms)
        return JsonResponse({"status": "Reserva creada"})