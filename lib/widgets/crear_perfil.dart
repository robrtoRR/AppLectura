import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'completar_perfil.dart';

class CrearPerfil extends StatefulWidget {
  @override
  _CrearPerfilState createState() => _CrearPerfilState();
}

class _CrearPerfilState extends State<CrearPerfil> {
  // Variables para la lista desplegable
  List<String> opciones = <String>["Alumno", "Profesor"];
  String? opcionSeleccionada; // Variable para almacenar la opción seleccionada

  // Imagenes para avatar
  List<String> avatarImages = [
    'images/avatar/avatar_nina.svg',
    'images/avatar/avatar_nino.svg',
  ];

  String imageSel = 'images/avatar/avatar_nina.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 222, 246, 244),
        ),
        child: Center(
          child: Container(
            height: 800,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("¿Eres alumno o profesor?"),
                SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: opcionSeleccionada,
                  decoration: InputDecoration(
                    labelText: "Seleccione un perfil",
                    border: OutlineInputBorder(),
                  ),
                  items: opciones.map<DropdownMenuItem<String>>((String valor) {
                    return DropdownMenuItem<String>(
                      value: valor,
                      child: Text(valor),
                    );
                  }).toList(),
                  onChanged: (String? nuevoValor) {
                    setState(() {
                      opcionSeleccionada = nuevoValor;
                    });
                  },
                ),
                SizedBox(height: 20),
                Text("Selecciona una imagen para tu perfil"),
                SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // Muestra el menú para seleccionar imagen
                      _mostrarOpcionesAvatar(context);
                    },
                    child: SvgPicture.asset(
                      imageSel, // Cambiará a la imagen seleccionada
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CompletarPerfil()),
                    );
                  },
                  child: Text("Continuar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Función para mostrar el menú de selección de imágenes
  void _mostrarOpcionesAvatar(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: avatarImages.map((imagen) {
              return ListTile(
                leading: SvgPicture.asset(
                  imagen,
                  width: 50,
                  height: 50,
                ),
                title: Text("Seleccionar esta imagen"),
                onTap: () {
                  setState(() {
                    imageSel = imagen;
                  });
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
