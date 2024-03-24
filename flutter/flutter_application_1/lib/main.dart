import 'package:flutter/material.dart';
import 'package:flutter_application_1/index_page.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/register_page.dart';
import 'package:flutter_application_1/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: indexRoute, // Ruta inicial
      routes: {
        indexRoute: (context) => IndexPage(), // Ruta para la página de índice
        loginRoute: (context) => LoginPage(), // Ruta para la página de inicio de sesión
        registerRoute: (context) => RegisterPage(), // Ruta para la página de registro
      },
    );
  }
}
