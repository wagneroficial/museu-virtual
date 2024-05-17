import 'package:flutter/material.dart';

class Patrimonio extends StatefulWidget {
  const Patrimonio({super.key});

  @override
  State<Patrimonio> createState() => _PatrimonioState();
}

class _PatrimonioState extends State<Patrimonio> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11.56),
      ),
      margin: const EdgeInsets.only(bottom: 25),
      child: Container(
        decoration: (BoxDecoration(
            borderRadius: BorderRadius.circular(11.56),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF00256D),
                Color(0xFF216CFF),
              ],
            ))),
        height: 63.82,
        width: 252.48,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/3D.png",
                width: 38,
                height: 38,
              ),
             Container(
              margin: const EdgeInsets.only(right: 80),
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
               "Viagem 3D",
                style: TextStyle(fontSize: 16.09, color: Colors.white),
              ),
            ),
            ]),
      ),
    );
  }
}
