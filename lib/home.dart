import 'package:flutter/material.dart';
import 'package:museu/componentes_home/menu_avaliar.dart';
import 'package:museu/componentes_home/menu_galeria.dart';
import 'package:museu/componentes_home/menu_patrimonio.dart';
import 'componentes_home/menu_acervo.dart';
import 'componentes_home/menu_historico.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
              child: Image.asset(
                "imagens/logo.png",
                width: 115,
                height: 40.16,
              ),
            ),
            Image.asset("imagens/menu.png")
          ],
        ),
        backgroundColor: const Color(0xFF001540),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("imagens/fundo.png"), fit: BoxFit.fill)),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Historico(),
          Acervo(),
          Patrimonio(),
          Galeria(),
          Avaliar()
        ]),
      ),
    );
  }
}
