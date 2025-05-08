import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(child: Text('Pantalla de inicio')),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}