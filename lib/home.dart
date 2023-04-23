import 'package:flutter/material.dart';

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
        title: Image.asset(
          "imagens/logo.png",
          width: 115,
          height: 40.16,
        ),
        backgroundColor: const Color(0xFF001540),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("imagens/fundo.png"), fit: BoxFit.fill)),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          //HISTORICO E CULTURA DO MUNICIPIO

          Card(
            margin: EdgeInsets.only(top: 50, bottom: 25),
            child: Container(
              height: 63.82,
              width: 252.48,
              color: Colors.red,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "imagens/historico.png",
                      width: 38,
                      height: 38,
                    ),
                    Text(
                      "Historico e Cultura \n do municipio",
                      style: TextStyle(fontSize: 16.09, color: Colors.white),
                    )
                  ]),
            ),
          ),

          //ACERVOS CULTURAIS

          Card(
            margin: EdgeInsets.only(bottom: 25),
            child: Container(
              height: 63.82,
              width: 252.48,
              color: Colors.orange[600],
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "imagens/acervo.png",
                      width: 38,
                      height: 38,
                    ),
                    Text(
                      "Acervos culturais \n do municipio",
                      style: TextStyle(fontSize: 16.09, color: Colors.white),
                    )
                  ]),
            ),
          ),

          //PATRIMIONS MATERIAIS

          Card(
            margin: EdgeInsets.only(bottom: 25),
            child: Container(
              height: 63.82,
              width: 252.48,
              color: Color.fromARGB(255, 9, 46, 167),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "imagens/patrimonios.png",
                      width: 38,
                      height: 38,
                    ),
                    Text(
                      "Patrimonios Materiais \n e Imateriais",
                      style: TextStyle(fontSize: 16.09, color: Colors.white),
                    )
                  ]),
            ),
          ),

          //GALERIA DE FOTOS E ARTEFTOS

          Card(
            margin: EdgeInsets.only(bottom: 25),
            child: Container(
              height: 63.82,
              width: 252.48,
              color: Color.fromARGB(255, 3, 122, 43),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "imagens/galeria.png",
                      width: 38,
                      height: 38,
                    ),
                    Text(
                      "Galeria de Fotos \n e Artefatos",
                      style: TextStyle(fontSize: 16.09, color: Colors.white),
                    )
                  ]),
            ),
          ),

          //AVALAIR APLICATIVOS

          Card(
            margin: EdgeInsets.only(bottom: 25),
            child: Container(
              height: 63.82,
              width: 252.48,
              color: Color.fromARGB(255, 146, 2, 146),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "imagens/avaliar.png",
                      width: 38,
                      height: 38,
                    ),
                    Text(
                      "Avaliar Aplicativos",
                      style: TextStyle(fontSize: 16.09, color: Colors.white),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
