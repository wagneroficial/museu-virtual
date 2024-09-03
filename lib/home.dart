import 'package:flutter/material.dart';
import 'package:museu/componentes/appBar.dart';
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
      appBar: CustomAppBar(), // Use o AppBar personalizado
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/fundo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Historico(),
                  Acervo(),
                  Quizz(),
                  Avaliar(),
                  SizedBox(height: 90),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
