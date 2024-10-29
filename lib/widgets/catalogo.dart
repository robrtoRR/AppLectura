import 'dart:ui';
import 'package:app_lectura/widgets/vista_previa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Catalogo extends StatefulWidget {
  @override
  _CatalogoState createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 177, 200),
        leading: const Icon(Icons.filter_alt),
        title: const Text("Catalogo"),
        actions: <Widget>[
          IconButton(
            tooltip: 'Buscar libro',
            icon: const Icon(Icons.search),
            onPressed: () {},
            /* onPressed: () async {
              final String? selected = await showSearch<String>(
                context: context,
                delegate: _delegate,
              );
              if (context.mounted && selected != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$selected mostrar significado"),
                  ),
                );
              }
            },*/
          ),
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
                      GestureDetector(
                        onTap: () {
                          //Espacio para codigo
                          print("Lectura seleccionada");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VistaPrevia()),
                          );
                        },
                        child: SvgPicture.asset(
                          'images/image_vector.svg',
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Titulo"),
                          Text("Género"),
                          Text("Dificultad"),
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
