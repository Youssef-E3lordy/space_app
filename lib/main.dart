import 'package:flutter/material.dart';
import 'package:space_app/Screens/login_screen.dart';

void main() {
  runApp(SpaceApp());
}

class SpaceApp extends StatelessWidget {
   SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
