import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> preguntas = [
    {
      "pregunta": "¿Qué estaba haciendo el labrador cuando encontró el cazo?",
      "opciones": [
        "Estaba descansando",
        "Estaba cosechando",
        "Estaba arando el campo",
        "Estaba vendiendo frutas"
      ],
      "respuesta": "Estaba arando el campo"
    },
    {
      "pregunta": "¿Qué sucedió cuando las monedas cayeron dentro del cazo?",
      "opciones": [
        "Desaparecieron",
        "Se multiplicaron",
        "Se hicieron de oro",
        "Se convirtieron en piedras"
      ],
      "respuesta": "Se multiplicaron"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Juego de Quiz')),
      body: ListView.builder(
        itemCount: preguntas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(preguntas[index]['pregunta']),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: preguntas[index]['opciones'].map<Widget>((opcion) {
                return ElevatedButton(
                  onPressed: () {
                    final respuesta = preguntas[index]['respuesta'];
                    final correcto = opcion == respuesta;
                    final mensaje = correcto ? '¡Correcto!' : 'Incorrecto';
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(mensaje)),
                    );
                  },
                  child: Text(opcion),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
