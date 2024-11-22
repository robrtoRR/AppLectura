import 'package:app_lectura/perfil/sesion.dart';
import 'package:app_lectura/perfil/signup.dart';
import 'package:app_lectura/secciones/menu_principal.dart';
import 'package:app_lectura/perfil/login.dart';
import 'package:app_lectura/widgets/miniquiz.dart';
import 'package:flutter/material.dart';
import '../widgets/catalogo.dart';
import '../widgets/crear_perfil.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fondo.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 350,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Bienvenido a AppLectura",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //Codigo para boton de registro
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Text("Registrate aquí"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //Codigo para inicio de sesión
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text("Inicia sesión"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
