import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String etiqueta;
  final bool obscureText;

  CustomTextField({required this.etiqueta, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(labelText: etiqueta),
    );
  }
}