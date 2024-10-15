import 'package:flutter/material.dart';
import 'widgets/catalogo.dart';
import 'widgets/crear_perfil.dart';
import 'widgets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}
