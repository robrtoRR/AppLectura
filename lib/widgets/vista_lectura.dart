import 'package:app_lectura/widgets/juegos/memorama.dart';
import 'package:app_lectura/widgets/juegos/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VistaLectura extends StatefulWidget {
  @override
  _VistaLecturaState createState() => _VistaLecturaState();
}

class _VistaLecturaState extends State<VistaLectura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 177, 200),
        leading: const Icon(Icons.book),
        title: const Text("Título de la lectura"),
        actions: <Widget>[
          IconButton(
            tooltip: 'Buscar palabra',
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0), // Padding para mejor legibilidad
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur adipiscing elit volutpat, quam arcu ad purus egestas erat parturient, iaculis nulla fames platea orci lectus malesuada. Porttitor nunc lectus cursus fusce inceptos scelerisque imperdiet libero, enim vehicula sem integer vivamus ligula condimentum donec, facilisi viverra suspendisse felis mi nulla ullamcorper. Sociis sodales senectus nullam sociosqu nam montes nascetur, tellus integer faucibus varius tristique cursus malesuada eget, rutrum mollis donec magnis potenti vestibulum.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Espacio para código
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VistaLectura()),
                      );
                    },
                    child: Text("<"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Espacio para código
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Memorama()),
                      );
                    },
                    child: Text(">"),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
