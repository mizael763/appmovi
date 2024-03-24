import 'package:flutter/material.dart';
import 'login/login_simple.dart'; 
import 'login/login_simple2.dart'; 
import 'login/login_simple3.dart'; 
import 'login/login_simple4.dart'; 
import 'login/login_simple5.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selector de Formulario de Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPageSelector(),
    );
  }
}

class LoginPageSelector extends StatelessWidget {
  const LoginPageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecciona tu Formulario de Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSimple()),
                  );
                },
                child: const Text('Formulario de Login Simple 1'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSimple2()),
                  );
                },
                child: const Text('Formulario de Login Simple 2'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child:  ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginSimple3()),
                  );
                },
                child: const Text('Formulario de Login Simple 3'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15), // Aplica un margen de 15 en todos los lados del contenedor
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginSimple4()),
                  );
                },
                child: const Text('Formulario de Login Simple 4'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginSimple5()),
                  );
                },
                child: const Text('Formulario de Login Simple 5'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
