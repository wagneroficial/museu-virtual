import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:museu/componentes/appBar.dart';
import 'package:museu/componentes/componentes_avaliacao/OpcaoNota5.dart';
import 'package:museu/componentes/componentes_avaliacao/SelecaoOpcao.dart';
import 'package:museu/componentes/componentes_avaliacao/botaoEnviar.dart';
import 'package:museu/componentes/componentes_avaliacao/caixasOpcao.dart';
import 'package:museu/componentes/componentes_avaliacao/textoPadrao.dart';
import 'package:museu/home.dart';
import 'package:museu/utils/globalColors.dart';

class AvaliacaoScreen extends StatefulWidget {
  const AvaliacaoScreen({Key? key}) : super(key: key);

  @override
  State<AvaliacaoScreen> createState() => _AvaliacaoScreenState();
}

class _AvaliacaoScreenState extends State<AvaliacaoScreen> {
  int? notaApp;
  bool? dificuldadeUsar;
  bool? encontrouFalhas;
  bool? ferramentaEnsino;
  Map<String, bool> sugestoes = {};
  int? avaliacaoTela;
  int? relevanciaConteudo;
  int? conteudoConhecido;
  int? adequacaoAprendizado;
  int? visitaVirtual;
  int? materialEstudo;
  int? conhecerHistoria;
  int? satisfacaoFerramentas;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _showSuccessModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 1), () {
          Navigator.of(context).pop();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        });
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 230, 185, 53),
          title: const Text('Sucesso'),
          content: const Text('Formulário enviado com sucesso!'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/fundo2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 55),
              Image.asset(
                'imagens/Avaliacao_II.png',
                width: 60,
                height: 60,
              ),
              const SizedBox(height: 5),
              Text(
                'Avalie nosso app',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: GlobalColors.textColor,
                ),
              ),

              // PERGUNTA 1
              const SizedBox(height: 40),
              const TextoGlobalAvaliacao(
                texto:
                    "Qual nota você daria ao aplicativo Museu Virtual de Oriximiná?",
              ),
              const SizedBox(height: 50.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        notaApp = value;
                      })),

              // PERGUNTA 2
              const SizedBox(height: 40),
              const TextoGlobalAvaliacao(
                texto: "Você teve dificuldade em usar o aplicativo?",
              ),
              const SizedBox(height: 16.0),
              SelecaoOpcao(
                  onChanged: (value) => setState(() {
                        dificuldadeUsar = value;
                      })),

              // PERGUNTA 3
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto: "Você encontrou falhas no aplicativo?",
              ),
              const SizedBox(height: 16.0),
              SelecaoOpcao(
                  onChanged: (value) => setState(() {
                        encontrouFalhas = value;
                      })),

              // PERGUNTA 4
              const SizedBox(height: 40),
              const TextoGlobalAvaliacao(
                texto:
                    "Este aplicativo serviu como ferramenta no processo de ensino/aprendizagem sobre a História do Município de Oriximiná - PA?",
              ),
              const SizedBox(height: 16.0),
              SelecaoOpcao(
                  onChanged: (value) => setState(() {
                        ferramentaEnsino = value;
                      })),

              // PERGUNTA 5
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "Qual dos itens você sugere como contribuição para outras versões do aplicativo?",
              ),
              const SizedBox(height: 16.0),
              CaixasOpcao(
                  onChanged: (value) => setState(() {
                        sugestoes = value;
                      })),

              // PERGUNTA 6
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto: "Como você avalia a tela do aplicativo?",
              ),
              const SizedBox(height: 16.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        avaliacaoTela = value;
                      })),

              // PERGUNTA 7
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "O conteúdo do aplicativo é relevante para o aprendizado sobre a cultura do Município?",
              ),
              const SizedBox(height: 16.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        relevanciaConteudo = value;
                      })),

              // PERGUNTA 8
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "O conteúdo do aplicativo possui conteúdos dos quais eu já conhecia?",
              ),
              const SizedBox(height: 16.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        conteudoConhecido = value;
                      })),

              // PERGUNTA 9
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "O conteúdo do aplicativo é adequado ao meu jeito de aprender?",
              ),
              const SizedBox(height: 16.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        adequacaoAprendizado = value;
                      })),

              // PERGUNTA 10
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "Na visita virtual me senti como estivesse em uma visita no museu físico?",
              ),
              const SizedBox(height: 16.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        visitaVirtual = value;
                      })),

              // PERGUNTA 11
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "O conteúdo do aplicativo pode ser usado para um material de estudo?",
              ),
              const SizedBox(height: 16.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        materialEstudo = value;
                      })),

              // PERGUNTA 12
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "As perguntas do aplicativo fizeram eu conhecer mais sobre a história do Município?",
              ),
              const SizedBox(height: 16.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        conhecerHistoria = value;
                      })),

              // PERGUNTA 13
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "Estou satisfeito com as ferramentas e tudo que aprendi no aplicativo?",
              ),
              const SizedBox(height: 16.0),
              OpcaoNota5(
                  onChanged: (value) => setState(() {
                        satisfacaoFerramentas = value;
                      })),

              // BOTÃO ENVIAR
              const SizedBox(height: 40),
              BotaoEnviar(
                onPressed: () async {
                  final User? user = _auth.currentUser;
                  final String? userName = user?.displayName;
                  final String? userEmail = user?.email;
                  final data = {
                    'notaApp': notaApp,
                    'dificuldadeUsar': dificuldadeUsar,
                    'encontrouFalhas': encontrouFalhas,
                    'ferramentaEnsino': ferramentaEnsino,
                    'sugestoes': sugestoes,
                    'avaliacaoTela': avaliacaoTela,
                    'relevanciaConteudo': relevanciaConteudo,
                    'conteudoConhecido': conteudoConhecido,
                    'adequacaoAprendizado': adequacaoAprendizado,
                    'visitaVirtual': visitaVirtual,
                    'materialEstudo': materialEstudo,
                    'conhecerHistoria': conhecerHistoria,
                    'satisfacaoFerramentas': satisfacaoFerramentas,
                    'userName': userName,
                    'userEmail': userEmail,
                  };
                  await FirebaseFirestore.instance
                      .collection('avaliacoes')
                      .add(data);
                  print('Dados enviados com sucesso!');

                  _showSuccessModal(context);
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
