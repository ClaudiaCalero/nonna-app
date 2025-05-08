import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recuperar contraseña')),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(decoration: InputDecoration(labelText: 'Correo')),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          },child: Text('Enviar enlace'),
          )
        ],
      )),
    );
  }
}
