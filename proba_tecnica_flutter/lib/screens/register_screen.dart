import 'package:flutter/material.dart';
import '../models/user.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final nombreController = TextEditingController();
  final primerApellidoController = TextEditingController();
  final segundoApellidoController = TextEditingController();
  final emailController = TextEditingController();
  final telefonoController = TextEditingController();

  void _registerUser() {
    if (_formKey.currentState!.validate()) {
      final newUser = User(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        nombre: nombreController.text,
        primerApellido: primerApellidoController.text,
        segundoApellido: segundoApellidoController.text,
        email: emailController.text,
        telefono: telefonoController.text,
      );

      print('Usuario registrado: ${newUser.nombre} ${newUser.email}');

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nombreController,
                decoration: InputDecoration(labelText: 'Nombre'),
                validator: (value) => value!.isEmpty ? 'Introduce tu nombre' : null,
              ),
              TextFormField(
                controller: primerApellidoController,
                decoration: InputDecoration(labelText: 'Primer Apellido'),
                validator: (value) => value!.isEmpty ? 'Introduce tu primer apellido' : null,
              ),
              TextFormField(
                controller: segundoApellidoController,
                decoration: InputDecoration(labelText: 'Segundo Apellido'),
                validator: (value) => value!.isEmpty ? 'Introduce tu segundo apellido' : null
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Correo electrónico'),
                validator: (value) => value!.isEmpty ? 'Introduce tu correo' : null,
              ),
              TextFormField(
                controller: telefonoController,
                decoration: InputDecoration(labelText: 'Teléfono'),
                validator: (value) => value!.isEmpty ? 'Introduce tu teléfono' : null,

              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _registerUser,
                child: Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
