import 'dart:async';
import 'package:flutter/material.dart';
import 'package:museu/home.dart';
import 'package:museu/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initializeFirebaseAndCheckUser();
  }

  Future<void> initializeFirebaseAndCheckUser() async {
    await Firebase.initializeApp();
    Timer(Duration(seconds: 4), () {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Home(),
        ));
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/fundoAbertura.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'imagens/logo2.png',
              width: 184.05,
              height: 177.04,
            ),
            const SizedBox(height: 20),
            const Text(
              "BEM-VINDO AO MUSEU!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
                fontSize: 42.71,
                height: 52.06 / 42.71, 
                color: Color(0xFF001540),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
