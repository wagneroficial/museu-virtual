import 'package:flutter/material.dart';
import 'dart:async';

import 'package:museu/TelasRack/SemAcerto.dart';
import 'package:museu/componentes/appBar.dart';

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
      questionText:
          'Qual o nome dessa Rua do Município de Oriximiná - PA, no ano de 1950?',
      options: [
        'Rua Pedro Carlos de Oliveira',
        'Rua Barão do Rio Branco',
        'Rua 15 de Novembro',
        'Rua 7 de Setembro'
      ],
      correctAnswerIndex: 1,
      imagePath: 'imagens/barao.jpeg',
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
      Navigator.of(context).pop();
      _nextQuestion();
    });
  }

  void _checkAnswer() {
    if (_selectedOptionIndex == null) return;

    bool isCorrect = _selectedOptionIndex ==
        _questions[_currentQuestionIndex].correctAnswerIndex;
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
      appBar:  CustomAppBar(),
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
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Image.asset(
                      "imagens/quizzLogo.png",
                      width: 41,
                      height: 38,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Questão ${_currentQuestionIndex + 1}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF001540),
                        
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(
                  _questions[_currentQuestionIndex].questionText,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFF001540),
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                Image.asset(
                  _questions[_currentQuestionIndex].imagePath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20.0),
                ..._questions[_currentQuestionIndex]
                    .options
                    .asMap()
                    .entries
                    .map((entry) {
                  int idx = entry.key;
                  String text = entry.value;
                  return RadioListTile<int>(
                    activeColor: const Color.fromARGB(228, 238, 186, 17),
                    title: Text(
                      text,
                      style: const TextStyle(
                          color: Color(0xFF001540),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
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
                    onPressed:
                        _selectedOptionIndex == null ? null : _checkAnswer,
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
