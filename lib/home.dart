import 'package:flutter/material.dart';
import 'package:museu/componentes/componentes_home/menu_avaliar.dart';
import 'package:museu/componentes/componentes_home/menu_quizz.dart';
import 'componentes/componentes_home/menu_visita_60.dart';
import 'componentes/componentes_home/menu_historico.dart';

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
              padding: const EdgeInsets.only(top: 5, left: 20, bottom: 5),
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
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/fundo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth < 600) {
                return const SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Historico(),
                        Acervo(),
                        Quizz(),
                        Avaliar(),
                        SizedBox(height: 90,)
                      ],
                    ),
                  ),
                );
              } else {
                return const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Historico()),
                    Expanded(child: Acervo()),
                    Expanded(child: Quizz()),
                    Expanded(child: Avaliar()),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
