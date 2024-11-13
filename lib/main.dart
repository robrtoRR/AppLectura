import 'package:app_lectura/perfil/pantallas.dart';
import 'package:app_lectura/secciones/avatar/avatar.dart';
import 'package:app_lectura/secciones/menu_principal.dart';
import 'package:app_lectura/widgets/catalogo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'perfil/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppLectura',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        'ForgotPassword': (context) => Recuperar(),
        'CreateNewAccount': (context) => Signup(),
        'Principal': (context) => MenuPrincipal(),
        'Catalogo': (context) => Catalogo(),
        'Avatar': (context) => Avatar(),
      },
    );
  }
}
