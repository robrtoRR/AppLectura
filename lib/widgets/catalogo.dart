import 'dart:ui';

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
        leading: const Icon(Icons.tag_faces),
        title: const Text("Catalogo"),
        actions: <Widget>[
          IconButton(
            tooltip: 'Buscar palabra',
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
          child: Center(),
        ),
      ),
    );
  }
}
