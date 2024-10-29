import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VistaPrevia extends StatefulWidget {
  @override
  _VistaPreviaState createState() => _VistaPreviaState();
}

class _VistaPreviaState extends State<VistaPrevia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 177, 200),
        leading: const Icon(Icons.filter_alt),
        title: const Text("Catálogo"),
        actions: <Widget>[
          IconButton(
            tooltip: 'Buscar libro',
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: 900,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //Espacio para codigo
                              print("Acceder a la lectura");
                            },
                            child: SvgPicture.asset(
                              'images/image_vector.svg',
                              width: 150,
                              height: 200,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Título"),
                          Text("Género"),
                          Text("Dificultad"),
                          Text("Dificultad"),
                          Text("Palabras"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
