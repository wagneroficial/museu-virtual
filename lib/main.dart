import 'package:flutter/material.dart';
import 'package:museu/abertura.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:museu/avaliacao.dart';
import 'package:museu/home.dart';
import 'package:museu/login.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
       debugShowCheckedModeBanner: false,
    );
  }
}
