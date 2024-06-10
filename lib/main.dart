import 'package:flutter/material.dart';
import 'package:museu/abertura.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
       debugShowCheckedModeBanner: false,
    );
  }
}
