from django.urls import path
from . import views

urlpatterns = [
    path('habitaciones/', views.lista_habitaciones, name='lista_habitaciones'),
    path('reservar/', views.crear_reserva, name='crear_reserva'),
]