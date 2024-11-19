import 'package:flutter/material.dart';

class OrdenarHistoria extends StatelessWidget {
  final List<String> fragmentos = [
    "La abeja perezosa se negaba a trabajar y disfrutaba del día sin cumplir con sus deberes.",
    "Las abejas guardianas finalmente la bloquearon, exigiendo que trabajara, pero la abeja lo ignoró.",
    "Después de ser echada, la abeja enfrentó el frío y la lluvia, hasta caer en una caverna.",
    "En la caverna, se encontró con una serpiente que quiso devorarla, pero la abeja usó su astucia para esconderse.",
    "Tras una noche aterradora, aprendió la lección y regresó a la colmena decidida a trabajar.",
    "La abeja, arrepentida, trabajó más que nadie en la colmena, demostrando su cambio y compromiso.",
  ];

  @override
  Widget build(BuildContext context) {
    final fragmentosMezclados = List.from(fragmentos)..shuffle();

    return Scaffold(
      appBar: AppBar(title: Text('Ordenar Historia')),
      body: ReorderableListView(
        children: fragmentosMezclados.map((fragmento) {
          return ListTile(
            key: ValueKey(fragmento),
            title: Text(fragmento),
          );
        }).toList(),
        onReorder: (oldIndex, newIndex) {
          // Cambiar posiciones
        },
      ),
    );
  }
}
