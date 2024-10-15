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
              //Primera opcion
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Primera opcion
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 150,
                        height: 150,
                      ),
                      Text("Lecturas"),
                    ],
                  ),
                  //Segunda opcion
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 150,
                        height: 150,
                      ),
                      Text("Avatar"),
                    ],
                  ),
                  //Tercera opcion
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 150,
                        height: 150,
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
                        width: 150,
                        height: 150,
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
