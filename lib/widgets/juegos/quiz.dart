import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => QuizProvider(),
      child: const Quiz(),
    ),
  );
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Quiz de Comprensión',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizScreen(),
    );
  }
}

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProvider>(context);
    final currentQuestion = provider.preguntas[provider.indicePregunta];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mini Quiz - El Gran Cazo Mágico'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              currentQuestion["pregunta"] as String,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...List.generate((currentQuestion["opciones"] as List).length,
                (index) {
              return RadioListTile<String>(
                title: Text(currentQuestion["opciones"][index]),
                value: currentQuestion["opciones"][index],
                groupValue: provider.respuestaSeleccionada,
                onChanged: (value) {
                  provider.seleccionarRespuesta(value!);
                },
              );
            }),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => provider.verificarRespuesta(context),
              child: const Text("Verificar Respuesta"),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizProvider extends ChangeNotifier {
  // Lista de preguntas y opciones
  final List<Map<String, dynamic>> preguntas = [
    {
      "pregunta": "¿Qué estaba haciendo el labrador cuando encontró el cazo?",
      "opciones": [
        "Estaba descansando",
        "Estaba cosechando",
        "Estaba arando el campo",
        "Estaba vendiendo frutas"
      ],
      "respuesta": "Estaba arando el campo",
    },
    {
      "pregunta": "¿Qué sucedió cuando las monedas cayeron dentro del cazo?",
      "opciones": [
        "Desaparecieron",
        "Se multiplicaron",
        "Se hicieron de oro",
        "Se convirtieron en piedras"
      ],
      "respuesta": "Se multiplicaron",
    },
    {
      "pregunta":
          "¿Qué hizo el vecino del labrador al enterarse del cazo mágico?",
      "opciones": [
        "Se lo regaló al labrador",
        "Lo acusó ante el juez",
        "Intentó robarlo",
        "Lo rompió"
      ],
      "respuesta": "Lo acusó ante el juez",
    },
    {
      "pregunta": "¿Qué decidió hacer el juez al conocer la virtud del cazo?",
      "opciones": [
        "Devolvérselo al labrador",
        "Usarlo para el bien común",
        "Confiscarlo para quedárselo",
        "Destruirlo"
      ],
      "respuesta": "Confiscarlo para quedárselo",
    },
    {
      "pregunta":
          "¿Qué sucedió cuando el padre del juez metió las monedas en el cazo?",
      "opciones": [
        "Las monedas desaparecieron",
        "Salieron más monedas",
        "El cazo dejó de funcionar",
        "Cayó en el cazo y comenzaron a aparecer padres idénticos"
      ],
      "respuesta": "Cayó en el cazo y comenzaron a aparecer padres idénticos",
    },
  ];

  int indicePregunta = 0;
  int puntaje = 0;
  String? respuestaSeleccionada;

  // Seleccionar respuesta
  void seleccionarRespuesta(String respuesta) {
    respuestaSeleccionada = respuesta;
    notifyListeners();
  }

  // Verificar la respuesta seleccionada
  void verificarRespuesta(BuildContext context) {
    if (respuestaSeleccionada == preguntas[indicePregunta]["respuesta"]) {
      puntaje++;
      _mostrarMensaje(context, "Correcto", "¡Respuesta correcta! 😊");
    } else {
      _mostrarMensaje(context, "Incorrecto",
          "Respuesta incorrecta. La respuesta correcta era: '${preguntas[indicePregunta]["respuesta"]}'");
    }

    // Pasar a la siguiente pregunta o mostrar el resultado final
    if (indicePregunta < preguntas.length - 1) {
      indicePregunta++;
      respuestaSeleccionada = null;
      notifyListeners();
    } else {
      _mostrarResultado(context);
    }
  }

  // Mostrar un mensaje de respuesta correcta o incorrecta
  void _mostrarMensaje(BuildContext context, String titulo, String mensaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titulo),
          content: Text(mensaje),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  // Mostrar el resultado final
  void _mostrarResultado(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Resultado"),
          content: Text(
              "Has completado el quiz.\nPuntaje total: $puntaje de ${preguntas.length}"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
