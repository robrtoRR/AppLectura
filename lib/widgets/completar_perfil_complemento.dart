import 'package:app_lectura/widgets/menu_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompletarPerfilComplemeto extends StatefulWidget {
  @override
  _CompletarPerfilComplemetoState createState() =>
      _CompletarPerfilComplemetoState();
}

class _CompletarPerfilComplemetoState extends State<CompletarPerfilComplemeto> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          // Scroll
          child: Center(
            child: Container(
              height: 800, // Ajustar la altura o eliminar
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Cuéntanos sobre ti..."),
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Selecciona tres cosas que más te gusten?"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 50,
                        height: 50,
                      ),
                      Text("Palabra 1"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {});
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 50,
                        height: 50,
                      ),
                      Text("Palabra 2"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {});
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 50,
                        height: 50,
                      ),
                      Text("Palabra 3"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {});
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 50,
                        height: 50,
                      ),
                      Text("Palabra 4"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {});
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 50,
                        height: 50,
                      ),
                      Text("Palabra 5"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {});
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/image_vector.svg',
                        width: 50,
                        height: 50,
                      ),
                      Text("Palabra 6"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {});
                          })
                    ],
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      //Espacio para codigo
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenuPrincipal()),
                      );
                    },
                    child: Text("Siguiente"),
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
