import 'package:flutter/material.dart';

class Acervo extends StatefulWidget {
  const Acervo({super.key});

  @override
  State<Acervo> createState() => _AcervoState();
}

class _AcervoState extends State<Acervo> {
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
                Color(0xffBF7300),
                Color(0xFFEB9B00),
              ],
            ))),
        height: 63.82,
        width: 252.48,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/acervo.png",
                width: 38,
                height: 38,
              ),
              Text(
                "Acervos culturais \n do municipio",
                style: TextStyle(fontSize: 16.09, color: Colors.white),
              )
            ]),
      ),
    );
  }
}
