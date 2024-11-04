import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => QuizProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Relleno de Palabras',
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
    final currentQuestion = provider.partesHistoria[provider.parteActual];
    final currentHints = provider.currentHints;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Relleno de Palabras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "¡Completa las palabras faltantes y gana puntos!",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              currentQuestion,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...List.generate(
                provider.respuestasCorrectas[provider.parteActual].length,
                (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  controller: provider.controllers[index],
                  decoration: InputDecoration(
                    hintText: currentHints[index],
                    border: const OutlineInputBorder(),
                  ),
                ),
              );
            }),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(provider.intentosRestantes,
                  (index) => const Icon(Icons.favorite, color: Colors.red)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => provider.checkAnswer(context),
              child: const Text("Verificar"),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizProvider extends ChangeNotifier {
  // Variables
  int parteActual = 0;
  int puntajeTotal = 0;
  int intentos = 0;
  final int intentosMaximos = 6;

  // Listas de historia y respuestas correctas
  List<String> partesHistoria = [
    "Cuando dejé aquel ___, una ___ se adelantó entre todas. Era ___ y ligera.",
    "A pesar de los ___ de las otras, que la detenían por el vestido ___, se colgó de mi ___.",
    // Agrega más frases aquí
  ];

  List<List<String>> respuestasCorrectas = [
    ["mar", "ola", "esbelta"],
    ["gritos", "flotante", "brazo"],
    // Agrega más respuestas aquí
  ];

  // Controladores de texto
  List<TextEditingController> controllers =
      List.generate(3, (_) => TextEditingController());

  // Obtener pistas actuales
  List<String> get currentHints {
    return List.generate(respuestasCorrectas[parteActual].length, (index) {
      return controllers[index].text.isEmpty
          ? respuestasCorrectas[parteActual][index].substring(0, intentos)
          : controllers[index].text;
    });
  }

  // Intentos restantes
  int get intentosRestantes => intentosMaximos - intentos;

  // Verificar respuesta
  void checkAnswer(BuildContext context) {
    List<String> respuestas = List.generate(controllers.length,
        (index) => controllers[index].text.trim().toLowerCase());
    if (respuestas.every((respuesta) =>
        respuesta ==
        respuestasCorrectas[parteActual][respuestas.indexOf(respuesta)])) {
      puntajeTotal += 10 - (intentos * 2); // Ejemplo de puntuación
      _mostrarMensaje(
          context, "Correcto", "¡Has ganado ${10 - (intentos * 2)} puntos!");
      _siguienteParte();
    } else {
      intentos++;
      if (intentos >= intentosMaximos) {
        _mostrarMensaje(context, "Incorrecto",
            "La respuesta correcta era: ${respuestasCorrectas[parteActual].join(", ")}");
        _siguienteParte();
      } else {
        for (int i = 0; i < controllers.length; i++) {
          if (controllers[i].text.trim().toLowerCase() !=
              respuestasCorrectas[parteActual][i]) {
            controllers[i].text =
                respuestasCorrectas[parteActual][i].substring(0, intentos);
          }
        }
        notifyListeners();
        _mostrarMensaje(context, "Sigue intentando",
            "¡No te rindas! Cada vez estás más cerca.");
      }
    }
  }

  void _siguienteParte() {
    if (parteActual < partesHistoria.length - 1) {
      parteActual++;
      intentos = 0;
      for (var controller in controllers) {
        controller.clear();
      }
      notifyListeners();
    } else {
      _mostrarMensajeFinal();
    }
  }

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

  void _mostrarMensajeFinal() {
    print("Quiz terminado");
  }
}
