import 'package:flutter/material.dart';

class RellenoPalabras extends StatefulWidget {
  @override
  _RellenoPalabrasState createState() => _RellenoPalabrasState();
}

class _RellenoPalabrasState extends State<RellenoPalabras> {
  final List<String> palabras = [
    "mar",
    "ola",
    "esbelta",
    "gritos",
    "flotante",
    "brazo"
  ];
  final List<String> correctas = [
    "mar",
    "ola",
    "esbelta",
    "gritos",
    "flotante",
    "brazo"
  ];
  final List<String?> respuestas = [null, null, null, null, null, null];

  int palabrasCorrectas = 0;

  final List<String> fragmentosHistoria = [
    "Cuando dejé aquel ___, una ___ se adelantó entre todas. Era ___ y ligera.",
    "A pesar de los ___ de las otras, que la detenían por el vestido ___, se colgó de mi ___."
  ];

  void verificarRespuestas() {
    setState(() {
      palabrasCorrectas = 0;
      for (int i = 0; i < respuestas.length; i++) {
        if (respuestas[i] == correctas[i]) {
          palabrasCorrectas++;
        }
      }
      if (palabrasCorrectas == correctas.length) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("¡Has completado el juego correctamente!")),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  "Algunas respuestas son incorrectas. Intenta de nuevo.")),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> palabrasMezcladas = List.from(palabras)..shuffle();

    return Scaffold(
      appBar: AppBar(title: Text('Relleno de Palabras')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: fragmentosHistoria.length,
              itemBuilder: (context, index) {
                final palabrasEnBlanco = fragmentosHistoria[index].split("___");
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      for (int i = 0; i < palabrasEnBlanco.length; i++) ...[
                        Text(palabrasEnBlanco[i],
                            style: TextStyle(fontSize: 18)),
                        if (i < palabrasEnBlanco.length - 1)
                          DropdownButton<String>(
                            value: respuestas[i + (index * 3)],
                            hint: Text("Selecciona una palabra"),
                            items: palabrasMezcladas.map((palabra) {
                              return DropdownMenuItem<String>(
                                value: palabra,
                                child: Text(palabra),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                respuestas[i + (index * 3)] = value;
                              });
                            },
                          ),
                      ]
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: verificarRespuestas,
            child: Text("Verificar Respuestas"),
          ),
        ],
      ),
    );
  }
}
