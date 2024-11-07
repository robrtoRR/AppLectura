import 'package:flutter/material.dart';
import 'widgets/catalogo.dart';
import 'widgets/crear_perfil.dart';
import 'widgets/perfil/screens.dart';
import 'widgets/home.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppLectura',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: Homescreen(),
    );
  }
}
