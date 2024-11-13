import 'package:app_lectura/secciones/avatar/avatar.dart';
import 'package:app_lectura/widgets/catalogo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          //scroll
          child: Center(
            child: Container(
              height: 900,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Primera opcion
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //Espacio para codigo
                          print("Lectura seleccionada");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Catalogo()),
                          );
                        },
                        child: SvgPicture.asset(
                          'images/icon_biblioteca.svg',
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Text("Lecturas"),
                    ],
                  ),
                  //Segunda opcion
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //Espacio para codigo
                          print("Modulo avatar");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Avatar()),
                          );
                        },
                        child: SvgPicture.asset(
                          'images/icon_avatar.svg',
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Text("Avatar"),
                    ],
                  ),
                  //Tercera opcion
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/icon_tienda.svg',
                        width: 200,
                        height: 200,
                      ),
                      Text("Tienda"),
                    ],
                  ),
                  //Cuarta opcion
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 200,
                        height: 200,
                      ),
                      Text("Estadisticas"),
                    ],
                  ),
                ],
              ),
              //Seguna opcion
            ),
          ),
        ),
      ),
    );
  }
}
