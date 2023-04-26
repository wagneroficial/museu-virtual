import 'package:flutter/material.dart';

class Avaliar extends StatefulWidget {
  const Avaliar({super.key});

  @override
  State<Avaliar> createState() => _AvaliarState();
}

class _AvaliarState extends State<Avaliar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11.56),
      ),
      margin: EdgeInsets.only(bottom: 25),
      child: Container(
        decoration: (BoxDecoration(
            borderRadius: BorderRadius.circular(11.56),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF3C006B),
                Color(0xFF7600D6),
              ],
            ))),
        height: 63.82,
        width: 252.48,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/avaliar.png",
                width: 38,
                height: 38,
              ),
              Text(
                "Avaliar Aplicativos",
                style: TextStyle(fontSize: 16.09, color: Colors.white),
              )
            ]),
      ),
    );
  }
}
