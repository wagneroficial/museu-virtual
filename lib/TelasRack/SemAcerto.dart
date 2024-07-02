import 'package:flutter/material.dart';
import 'package:museu/home.dart';
import 'package:museu/quizz.dart';

class Semacerto extends StatefulWidget {
  final int acertos;
  final int erros;

  const Semacerto({super.key, required this.acertos, required this.erros});

  @override
  State<Semacerto> createState() => _SemacertoState();
}

class _SemacertoState extends State<Semacerto> {
  String getResultadoTexto() {
    if (widget.acertos <= 2) {
      return 'INFELIZMENTE NÃO FOI DESSA VEZ!\nMas você pode tentar o Quizz novamente!';
    } else if (widget.acertos <= 4) {
      return 'Parabéns, você ganhou troféu de bronze!\nVocê tem um bom conhecimento sobre a história de Oriximiná - PA!';
    } else if (widget.acertos <= 8) {
      return 'Parabéns, você ganhou troféu de prata!\nVocê é um ótimo estudante sobre a história de Oriximiná - PA!';
    } else {
      return 'Parabéns, você ganhou troféu de ouro!\nVocê é um grande historiador e sabe tudo sobre a cidade de Oriximiná - PA!';
    }
  }

  String getImagemTrofeu() {
    if (widget.acertos <= 2) {
      return 'imagens/game_over.png';
    } else if (widget.acertos <= 4) {
      return 'imagens/trofeu_bronze.png';
    } else if (widget.acertos <= 8) {
      return 'imagens/trofeu_prata.png';
    } else {
      return 'imagens/trofeu_ouro.png';
    }
  }

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
         automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Resultado',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                getResultadoTexto(),
                style: TextStyle(
                  fontSize: 18,
                  color: widget.acertos <= 2 ? Colors.red : Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Image.asset(
                getImagemTrofeu(),
                height: 150,
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'Nome do Usuário',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Acertos: ${widget.acertos}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Erros: ${widget.erros}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const QuizScreen(),
                        ),
                      );
                    },
                    child: const Text('Tentar novamente'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                     onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    },
                    child: const Text('Voltar ao menu'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

