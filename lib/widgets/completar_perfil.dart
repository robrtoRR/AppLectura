import 'package:flutter/material.dart';
import 'completar_perfil_complemento.dart';

class CompletarPerfil extends StatefulWidget {
  @override
  _CompletarPerfilState createState() => _CompletarPerfilState();
}

class _CompletarPerfilState extends State<CompletarPerfil> {
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
              height: 1500, // Ajustar la altura o eliminar
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
                      Text("¿Qué aventura te gustaría vivir?"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ser explorador en una isla misteriosa"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked2 != true) {
                                isChecked1 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ser investigador de animales increíbles"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked1 != true) {
                                isChecked2 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  //Siguiente pregunta
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "¿Qué historia te gustaria escuchar antes de dormir?"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Un cuento de magia y hechizos"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked2 != true) {
                                isChecked1 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Un cuento sobre astronautas y estrellas"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked1 != true) {
                                isChecked2 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  //Siguiente pregunta
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Si pudieras ser un personaje por un día, ¿Qué serías?"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Un detective que atrapa ladrones"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked2 != true) {
                                isChecked1 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Un científico que inventa cosas geniales"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked1 != true) {
                                isChecked2 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  //Siguiente pregunta
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("¿Qué prefieres ver en la tele?"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Robots y nuevas tecnoligías"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked2 != true) {
                                isChecked1 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Aventuras fantásticas con héroes valientes"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked1 != true) {
                                isChecked2 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  //Siguiente pregunta
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("¿Qué te gustaría descubrir más?"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Historias de superhéroes y villanos"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked2 != true) {
                                isChecked1 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Secretos del reino animal"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked1 != true) {
                                isChecked2 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  //Siguiente pregunta
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("¿Dónde te gustaría pasar un día divertido?"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("En un parque de ciencia con experimentos locos"),
                      Checkbox(
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked2 != true) {
                                isChecked1 = value ?? false;
                              }
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("En un castillo lleno de cuentos mágicos"),
                      Checkbox(
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isChecked1 != true) {
                                isChecked2 = value ?? false;
                              }
                            });
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
                            builder: (context) => CompletarPerfilComplemeto()),
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
