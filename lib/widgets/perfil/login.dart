import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import '../../pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) => LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Colors.black, Colors.transparent],
          ).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/fondo.jpeg"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Colors.black45, BlendMode.clear),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'AppLectura',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextInputField(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[500]?.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            FontAwesomeIcons.lock,
                            size: 30,
                            color: kWhite,
                          ),
                        ),
                        hintText: 'Contraseña',
                      ),
                      style: kBodyText,
                      obscureText: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
  });

  /*
  const TextInputField({
    Key key,
    this.icon,
    this.hint,
    this.inputType,
    this.inputAction,
    super.key,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputField inputType;
  f
   */

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  FontAwesomeIcons.envelope,
                  size: 30,
                  color: kWhite,
                ),
              ),
              hintText: 'Correo electrónico',
            ),
            style: kBodyText,
          ),
        ),
      ),
    );
  }
}
