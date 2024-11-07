import 'package:app_lectura/widgets/menu_principal.dart';
import 'package:app_lectura/widgets/perfil/login.dart';
import 'package:flutter/material.dart';
import 'catalogo.dart';
import 'crear_perfil.dart';

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
                          MaterialPageRoute(
                              builder: (context) => CrearPerfil()),
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
