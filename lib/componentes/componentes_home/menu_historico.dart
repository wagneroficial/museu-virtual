import 'package:flutter/material.dart';
import 'package:museu/componentes/componentes_historico/historico.dart';

class Historico extends StatefulWidget {
  const Historico({super.key});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HistoricoMunicipio()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.56),
        ),
        margin: const EdgeInsets.only(top: 50, bottom: 25),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.56),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff9B0000),
                Color(0xFFFF212E),
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
                "imagens/historico.png",
                width: 38,
                height: 38,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(left: 20, top: 10),
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
                  "Historico e Cultura \n do municipio",
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
