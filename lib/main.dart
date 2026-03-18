import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelLuxuryMoonsea(),
  ));
}

class HotelLuxuryMoonsea extends StatelessWidget {
  const HotelLuxuryMoonsea({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos los colores aquí para que sea fácil cambiarlos
    const Color azulNoche = Color(0xFF1A237E);
    const Color dorado = Color(0xFFC5A059);

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2), // Fondo gris muy claro
      appBar: AppBar(
        backgroundColor: azulNoche,
        title: const Text(
          'HOTEL LUXURY MOONSEA',
          style: TextStyle(color: Colors.white, letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          // Sección de Bienvenida Sencilla
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Panel de Administración',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: azulNoche),
              textAlign: TextAlign.center,
            ),
          ),

          // Tarjetas del Menú
          _tarjetaMenu(
            'Huéspedes',
            'https://picsum.photos/id/1027/200/200', // URL de prueba
            'Gestión de clientes VIP',
            azulNoche,
            dorado,
          ),
          _tarjetaMenu(
            'Habitaciones',
            'https://images.unsplash.com/photo-1590490360182-c33d57733427?q=80&w=800',
            'Control de disponibilidad',
            azulNoche,
            dorado,
          ),
          _tarjetaMenu(
            'Pisos',
            'https://images.unsplash.com/photo-1582719508461-905c673771fd?q=80&w=800',
            'Distribución del hotel',
            azulNoche,
            dorado,
          ),
          _tarjetaMenu(
            'Registros',
            'https://images.unsplash.com/photo-1554224155-6726b3ff858f?q=80&w=800',
            'Historial de ventas',
            azulNoche,
            dorado,
          ),
          _tarjetaMenu(
            'Empleados',
            'https://images.unsplash.com/photo-1580618672591-eb180b1a973f?q=80&w=800',
            'Control de personal',
            azulNoche,
            dorado,
          ),
        ],
      ),
    );
  }

  // FUNCIÓN PARA CREAR LAS TARJETAS
  Widget _tarjetaMenu(String titulo, String imageUrl, String sub, Color colorPrincipal, Color colorAcento) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
          backgroundColor: Colors.grey[200], // Color mientras carga la imagen
        ),
        title: Text(
          titulo,
          style: TextStyle(fontWeight: FontWeight.bold, color: colorPrincipal, fontSize: 18),
        ),
        subtitle: Text(sub),
        trailing: const Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey),
        onTap: () {
          // Aquí puedes programar qué pasa al tocar la tarjeta
        },
      ),
    );
  }
}
