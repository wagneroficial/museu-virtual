import 'package:flutter/material.dart';
import 'package:museu/componentes/appBar.dart';
import 'package:museu/componentes/componentes_avaliacao/OpcaoNota5.dart';
import 'package:museu/componentes/componentes_avaliacao/SelecaoOpcao.dart';
import 'package:museu/componentes/componentes_avaliacao/botaoEnviar.dart';
import 'package:museu/componentes/componentes_avaliacao/caixasOpcao.dart';
import 'package:museu/componentes/componentes_avaliacao/textoPadrao.dart';
import 'package:museu/utils/globalColors.dart';

class AvaliacaoScreen extends StatefulWidget {
  const AvaliacaoScreen({Key? key}) : super(key: key);

  @override
  State<AvaliacaoScreen> createState() => _AvaliacaoScreenState();
}

class _AvaliacaoScreenState extends State<AvaliacaoScreen> {
  final double nota = 0.0;

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
              const OpcaoNota5(), // 5 BOLINHAS

              //PERGUNTA 2
              const SizedBox(height: 40),
              const TextoGlobalAvaliacao(
                texto: "Você teve dificuldade em usar o aplicativo?",
              ),
              const SizedBox(height: 16.0),
              const SelecaoOpcao(), // FUNÇÃO DAS 2 BOLINHAS, SIM OU NAO

              // PERGUNTA 3
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto: "Você encontrou falhas no aplicativo?",
              ),
              const SizedBox(height: 16.0),
              const SelecaoOpcao(), // FUNÇÃO DAS 2 BOLINHAS, SIM OU NAO

              //PERGUNTA 4
              const SizedBox(height: 40),
              const TextoGlobalAvaliacao(
                texto:
                    "Este aplicativo serviu como ferramenta no processo de ensino/aprendizagem sobre a História do Município de Oriximiná - PA?",
              ),
              const SizedBox(height: 16.0),
              const SelecaoOpcao(), // FUNÇÃO DAS 2 BOLINHAS, SIM OU NAO

              // PERGUNTA 5
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "Qual dos itens você sugere como contribuição para outras versões do aplicativo?",
              ),
              const SizedBox(height: 16.0),
              const CaixasOpcao(), //  CAIXA DE OPÇÃO DE SELECAO

              //PERGUNTA 6
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto: "Como você avalia a tela do aplicativo?",
              ),
              const SizedBox(height: 16.0),
              const OpcaoNota5(),

              //PERGUNTA 7
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "O conteúdo do aplicativo é relevante para o aprendizado sobre a cultura do Município?",
              ),
              const SizedBox(height: 16.0),
              const OpcaoNota5(),

              //PERGUNTA 8
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "O conteúdo do aplicativo possui conteúdos dos quais eu já conhecia?",
              ),
              const SizedBox(height: 16.0),
              const OpcaoNota5(),

              //PERGUNTA 9
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "O conteúdo do aplicativo é adequado ao meu jeito de aprender?",
              ),
              const SizedBox(height: 16.0),
              const OpcaoNota5(),

              //PERGUNTA 10
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "Na visita virtual me senti como estivesse em uma visita no museu físico?",
              ),
              const SizedBox(height: 16.0),
              const OpcaoNota5(),

              //PERGUNTA 11
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "O conteúdo do aplicativo pode ser usado para um material de estudo?",
              ),
              const SizedBox(height: 16.0),
              const OpcaoNota5(),

              //PERGUNTA 12
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "As perguntas do aplicativo fizeram eu conhecer mais sobre a história do Município?",
              ),
              const SizedBox(height: 16.0),
              const OpcaoNota5(),

              //PERGUNTA 13
              const SizedBox(height: 30),
              const TextoGlobalAvaliacao(
                texto:
                    "Estou satisfeito com as ferramentas e tudo que aprendi no aplicativo ?",
              ),
              const SizedBox(height: 16.0),
              const OpcaoNota5(),

              // BOTAO ENVIAR
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: BotaoEnviar(
                    onPressed: () {
                      print('Enviar');
                    },
                  ),
                ),
              ),
              const SizedBox(height: 40), // Espaço adicional após o botão
            ],
          ),
        ),
      ),
    );
  }
}
