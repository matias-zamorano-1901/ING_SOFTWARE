from django.db import models

class Cliente(models.Model):
    cliente_id = models.CharField(max_length=9, primary_key=True)
    name_cli = models.CharField(max_length=20)
    apellido_cli = models.CharField(max_length=20)
    email_cl = models.CharField(max_length=50)
    telefono_cli = models.CharField(max_length=11)

    def __str__(self):
        return f"{self.name_cli} {self.apellido_cli}"

class Hotel(models.Model):
    hotel_id = models.CharField(max_length=4, primary_key=True)
    name_hotel = models.CharField(max_length=15)
    ciudad = models.CharField(max_length=20)
    categoria = models.CharField(max_length=10)
    telefono_hotel = models.CharField(max_length=11)

    def __str__(self):
        return self.name_hotel

class Habitacion(models.Model):
    TIPO_HABITACION = [
        ('S', 'Standard'),
        ('D', 'Deluxe'),
        ('P', 'Premium'),
    ]
    
    habitacion_id = models.CharField(max_length=6, primary_key=True)
    hotel = models.ForeignKey(Hotel, on_delete=models.CASCADE, db_column='hotel_id')
    tipo = models.CharField(max_length=10, choices=TIPO_HABITACION)
    capacidad = models.CharField(max_length=2)
    precio = models.DecimalField(max_digits=6, decimal_places=0)  # Usamos DecimalField para precio

    def __str__(self):
        return f"Habitación {self.habitacion_id} ({self.get_tipo_display()})"

class Reserva(models.Model):
    reserva_id = models.CharField(max_length=6, primary_key=True)
    hotel = models.ForeignKey(Hotel, on_delete=models.CASCADE, db_column='hotel_id')
    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE, db_column='cliente_id')
    habitacion = models.ForeignKey(Habitacion, on_delete=models.CASCADE, db_column='habitacion_id')
    fecha_entrada = models.DateField()
    fecha_salida = models.DateField(null=True, blank=True)
    cantidad_personas = models.CharField(max_length=1)

    def __str__(self):
        return f"Reserva {self.reserva_id} - {self.cliente}"

    class Meta:
        db_table = 'reserva'