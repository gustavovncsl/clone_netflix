
import 'package:clone_netflix/src/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Nosso root da aplicação
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Netflix',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.black,
          fontFamily: 'Netflix'
        ),
        home: HomeScreen()
        );
  }
}
