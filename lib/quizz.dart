import 'package:flutter/material.dart';
import 'dart:async';

import 'package:museu/TelasRack/SemAcerto.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  int? _selectedOptionIndex;

 final List<Question> _questions = [
    Question(
      questionText: 'Qual o nome dessa Rua do Município de Oriximiná - PA, no ano de 1950?',
      options: ['Rua Pedro Carlos de Oliveira', 'Rua Barão do Rio Branco', 'Rua 15 de Novembro', 'Rua 7 de Setembro'],
      correctAnswerIndex: 1,
      imagePath: 'imagens/barao.jpeg',
    ),
    Question(
      questionText: 'Qual o nome primitivo da Praça Santo Antônio?',
      options: ['São Sebastião', 'São Benedito', 'Largo da Matriz', 'Largo da Instalação'],
      correctAnswerIndex: 0,
      imagePath: 'imagens/praçavelha.jpeg',
    ),
    Question(
      questionText: 'Qual o nome primitivo do Município de Oriximiná - PA?',
      options: ['Ponta de Uruá Tapera', 'Murá Tapera', 'Freguesia de Santo Antônio de Uruá Tapera', 'Uruá Tapera'],
      correctAnswerIndex: 2,
      imagePath: 'imagens/cidade velha.jpeg',
    ),
    Question(
      questionText: 'Identifique qual é o nome desse local muito conhecido na cidade de Oriximiná - PA?',
      options: ['Barracão de Santa Luzia', 'Cliper de Santo Antônio', 'Barracão do Parque de Exposição', 'Nenhuma das alternativas'],
      correctAnswerIndex: 1,
      imagePath: 'imagens/clipSantoAntonio.jpeg',
    ),
    Question(
      questionText: 'Marque respectivamente os nomes dos locais de Oriximiná - PA que estão nas imagens.',
      options: ['1. Mercado da carne e peixe, 2. Travessa Magalhães Barata e 3. Delegacia', '1. Niagem, 2. Rua 24 de dezembro e 3. Cartório', '1. Mercado Municipal, 2. Travessa Carlos Maria Teixeira e 3. Secretaria Municipal de Assistência Social', 'Nenhuma das alternativas'],
      correctAnswerIndex: 2,
      imagePath: 'imagens/LocaisCidade.png',
    ),
    Question(
      questionText: 'Qual manifestação cultural realizada no município é essa?',
      options: ['Festival de Quadrilhas', 'Folia de São Benedito', 'Cordão de Pássaro', 'Nenhuma das alternativas'],
      correctAnswerIndex: 2,
      imagePath: 'imagens/CordaoPassaro.jpeg',
    ),
    Question(
      questionText: 'Em qual ano foi construído o Estádio Municipal de Oriximiná-PA? Que na época se chamava Doutor Picanço Diniz (Bauxitão).',
      options: ['1977', '1970', '1987', '1997'],
      correctAnswerIndex: 0,
      imagePath: 'imagens/Estadio.jpeg',
    ),
    Question(
      questionText: 'Em qual ano o Círio de Santo Antônio, que no início era terrestre passou a ser fluvial?',
      options: ['1936', '1946', '1945', '1950'],
      correctAnswerIndex: 1,
      imagePath: 'imagens/cirioFluvial.jpeg',
    ),
    Question(
      questionText: 'Qual o nome deste Patrimônio Natural registrado no ano de 1899?',
      options: ['Cachoeira da Pancada', 'Cachoeira do Ventilado', 'Cachoeira do Chuvisco', 'Cachoeira Porteira'],
      correctAnswerIndex: 3,
      imagePath: 'imagens/cachoiraPorteira.jpeg',
    ),
    Question(
      questionText: 'Qual o nome do primeiro Prefeito Eleito no Município de Oriximiná-PA, que está na imagem abaixo?',
      options: ['Pedro Carlos de Oliveira', 'Helvécio Guerreiro', 'Magalhães Barata', 'Gabriel Guerreiro'],
      correctAnswerIndex: 1,
      imagePath: 'imagens/helvecio.png',
    ),
  ];


  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex + 1 < _questions.length) {
        _currentQuestionIndex++;
        _selectedOptionIndex = null;
      } else {
        if (_allQuestionsAnswered()) {
          _navigateToResultScreen();
        }
      }
    });
  }

  bool _allQuestionsAnswered() {
    return _currentQuestionIndex + 1 == _questions.length;
  }

  void _navigateToResultScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Semacerto(
          acertos: _score,
          erros: _questions.length - _score,
        ),
      ),
    );
  }

  void _showFeedbackModal(bool isCorrect) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Positioned(
              top: 50.0,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.topCenter,
                child: Material(
                  type: MaterialType.transparency,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: AlertDialog(
                      backgroundColor: const Color(0xFF444444),
                      title: isCorrect
                          ? const Text(
                              'Parabéns você acertou!',
                              style: TextStyle(color: Colors.white),
                            )
                          : const Text(
                              'Poxa infelizmente você errou',
                              style: TextStyle(color: Colors.white),
                            ),
                      content: Icon(
                        isCorrect ? Icons.check_circle : Icons.cancel,
                        color: isCorrect ? Colors.green : Colors.red,
                        size: 48.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pop(); // Fecha o modal de feedback
      _nextQuestion(); // Vai para a próxima pergunta
    });
  }

  void _checkAnswer() {
    if (_selectedOptionIndex == null) return;

    bool isCorrect = _selectedOptionIndex == _questions[_currentQuestionIndex].correctAnswerIndex;
    if (isCorrect) {
      _score++;
    }
    _showFeedbackModal(isCorrect);

    if (_currentQuestionIndex + 1 == _questions.length) {
      if (_allQuestionsAnswered()) {
        _navigateToResultScreen();
      }
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
      ),
      body: Stack(
        children: [
          Image.asset(
            'imagens/fundo2.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20.0),
                Text(
                  _questions[_currentQuestionIndex].questionText,
                  style: const TextStyle(
                    fontSize: 24.0,
                    color: Color(0xFF001540),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset(
                  _questions[_currentQuestionIndex].imagePath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20.0),
                ..._questions[_currentQuestionIndex].options.asMap().entries.map((entry) {
                  int idx = entry.key;
                  String text = entry.value;
                  return RadioListTile<int>(
                    activeColor: const Color.fromARGB(228, 238, 186, 17),
                    title: Text(
                      text,
                      style: const TextStyle(color: Color(0xFF001540)),
                    ),
                    value: idx,
                    groupValue: _selectedOptionIndex,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionIndex = value;
                      });
                    },
                  );
                }).toList(),
                const SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: _selectedOptionIndex == null ? null : _checkAnswer,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 250, 193, 35),
                    ),
                    child: const Text('Próximo'),
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final String imagePath;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.imagePath,
  });
}
