import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:app_lectura/secciones/menu_principal.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:app_lectura/amplifyconfiguration.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_lectura/perfil/home.dart';
import '../widgets/catalogo.dart';
import 'package:app_lectura/secciones/avatar/avatar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      await Amplify.addPlugin(auth);

      // call Amplify.configure to use the initialized categories in your app
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      initialStep: AuthenticatorStep.signIn,
      signUpForm: SignUpForm.custom(
        fields: [
          SignUpFormField.name(required: true),
          SignUpFormField.email(required: true),
          SignUpFormField.password(),
          SignUpFormField.passwordConfirmation(),
        ],
      ),
      child: MaterialApp(
        title: 'AppLectura',
        theme: ThemeData(
          textTheme:
              GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        supportedLocales: [
          Locale('es'),
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: Authenticator.builder(),
        home: _RedirectOnSignIn(),
      ),
    );
  }
}

class _RedirectOnSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AuthUser>(
      future: Amplify.Auth.getCurrentUser(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          // Si el usuario está autenticado, navegar a Homescreen
          return MenuPrincipal();
        } else {
          // Si no está autenticado, mostrar el formulario de autenticación
          return const Scaffold(
            body: Center(child: Text('Por favor, inicia sesión.')),
          );
        }
      },
    );
  }
}
