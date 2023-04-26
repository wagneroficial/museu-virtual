import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
  const Historico({super.key});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11.56),
      ),
      margin: EdgeInsets.only(top: 50, bottom: 25),
      child: Container(
        decoration: (BoxDecoration(
            borderRadius: BorderRadius.circular(11.56),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff9B0000),
                Color(0xFFFF212E),
              ],
            ))),
        height: 63.82,
        width: 252.48,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/historico.png",
                width: 38,
                height: 38,
              ),
              Container(
                child: Text(
                  "Historico e Cultura \n do municipio",
                  style: TextStyle(fontSize: 16.09, color: Colors.white),
                ),
              )
            ]),
      ),
    );
  }
}
