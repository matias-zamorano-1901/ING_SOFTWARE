from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .models import Habitacion, Reserva
import json

@csrf_exempt
def lista_habitaciones(request):
    habitaciones = Habitacion.objects.all()
    data = [{
        "id": h.habitacion_id,
        "tipo": h.tipo,
        "precio": str(h.precio)
    } for h in habitaciones]
    return JsonResponse(data, safe=False)

@csrf_exempt
def crear_reserva(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body)
            # Aquí iría la lógica para crear la reserva
            return JsonResponse({"message": "Reserva creada exitosamente"})
        except Exception as e:
            return JsonResponse({"error": str(e)}, status=400)