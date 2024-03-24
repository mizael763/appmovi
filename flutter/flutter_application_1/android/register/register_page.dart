import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Aquí van los campos de entrada de correo electrónico y contraseña para el registro
            // También deberías tener un botón para realizar el registro
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Vuelve a la página anterior (en este caso, la página de inicio de sesión)
              },
              child: Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
