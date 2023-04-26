import 'package:flutter/material.dart';

class Galeria extends StatefulWidget {
  const Galeria({super.key});

  @override
  State<Galeria> createState() => _GaleriaState();
}

class _GaleriaState extends State<Galeria> {
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
                Color(0xFF165300),
                Color(0xFF009906),
              ],
            ))),
        height: 63.82,
        width: 252.48,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/galeria.png",
                width: 38,
                height: 38,
              ),
              Text(
                "Galeria de Fotos \n e Artefatos",
                style: TextStyle(fontSize: 16.09, color: Colors.white),
              )
            ]),
      ),
    );
  }
}
