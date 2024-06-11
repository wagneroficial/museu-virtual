import 'package:flutter/material.dart';
import 'package:museu/quizz.dart';
import 'package:museu/quizzAbertura.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const QuizAbertura()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.56),
        ),
        margin: const EdgeInsets.only(bottom: 25),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.56),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF165300),
                Color(0xFF009906),
              ],
            ),
          ),
          height: 63.82,
          width: 252.48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/quizz.png",
                width: 38,
                height: 38,
              ),
              Container(
                margin: const EdgeInsets.only(right: 115),
                padding: const EdgeInsets.only(top: 20, left: 15),
                height: double.infinity,
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 3,
                    ),
                  ),
                ),
                child: const Text(
                  "Quizz",
                  style: TextStyle(fontSize: 16.09, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
