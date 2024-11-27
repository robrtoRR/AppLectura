import 'dart:convert';
import 'dart:io';

Future<void> guardarDatosJson(Map<String, String?> datosUsuario) async {
  try {
    // Convertir los datos a JSON
    String jsonDatos = jsonEncode(datosUsuario);
    print(datosUsuario);
    //Espacio para codigo (enviar datos a lambda)
  } catch (e) {
    print('Error al guardar los datos como JSON: $e');
  }
}
