import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/pallete.dart';
import '../widgets/widgets.dart';
import '../widgets/dropdownButtonFormField.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Variable para almacenar el valor seleccionado en el Dropdown
  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(
          image: 'images/fondo.jpeg',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: size.width * 0.1),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: Colors.grey[400]!.withOpacity(0.4),
                            child: Icon(
                              FontAwesomeIcons.user,
                              color: kWhite,
                              size: size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kBlue,
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhite, width: 2),
                        ),
                        child: Icon(
                          FontAwesomeIcons.plus,
                          color: kWhite,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.width * 0.1),
                Column(
                  children: [
                    // Uso del nuevo DropdownInputField
                    DropdownInputField<String>(
                      icon: FontAwesomeIcons.user,
                      hint: 'Selecciona tu rol',
                      value: selectedRole,
                      items: const [
                        DropdownMenuItem(
                          value: 'Alumno',
                          child: Text('Alumno'),
                        ),
                        DropdownMenuItem(
                          value: 'Profesor',
                          child: Text('Profesor'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedRole = value;
                        });
                      },
                    ),
                    //const SizedBox(height: 20),
                    /*
                    TextInputField(
                      icon: FontAwesomeIcons.user,
                      hint: 'Nombre de usuario',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    */
                    TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Correo electrónico',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Contraseña',
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Confirma tu contraseña',
                      inputAction: TextInputAction.done,
                    ),
                    const SizedBox(height: 25),
                    RoundedButton(
                      buttonName: 'Registrate',
                      onPressed: () =>
                          Navigator.pushNamed(context, 'Principal'),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('¿Ya tienes una cuenta?', style: kBodyText),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'Iniciar sesión',
                            style: kBodyText.copyWith(
                              color: kBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
