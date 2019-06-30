import 'package:flutter/material.dart';
import 'package:odisseia/screens/home_screen.dart';

void main() => runApp(InitialPage());

class InitialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Odisseia",
      home: HomeScreen()
    );
  }
  
}