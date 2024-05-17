import 'package:flutter/material.dart';
import 'package:museu/componentes/componentes_historico/localizacao.dart';


class HistoricoMunicipio extends StatefulWidget {
  const HistoricoMunicipio({Key? key}) : super(key: key);

  @override
  State<HistoricoMunicipio> createState() => _HistoricoState();
}

class _HistoricoState extends State<HistoricoMunicipio> {
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
      body: SingleChildScrollView(
        child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imagens/fundo2.png"), fit: BoxFit.fill)),
          width: double.infinity,
          
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
                  Image.asset(
                    "imagens/pergaminho.png",
                    width: 38,
                    height: 38,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Histórico do Município",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
        
                  const Padding(
          padding: EdgeInsets.all(16.0), 
          child: Text(
            'No contexto cronológico do Município de Oriximiná esta formação Primitiva de sua população pelos nativos os indígenas das mais diversas etnias que habitavam o território do atual Município. O processo inicial da colonização do território de Oriximiná. O nome Oriximiná é de origem indígena, de procedência tupi, significando "o macho da abelha", o zangão. No entanto, frei Protásio Frinckel, conhecedor da região e de seus diversos núcleos de habitantes primitivos, inclina-se pela derivação de Eruzu-M Na que significa "muitas praias". Tradicionalmente considera-se que a colonização das terras de Oriximiná começou com o estabelecimento de vários quilombos/mocambos ao longo do rio Trombetas no século XIX.',
            textAlign: TextAlign.justify,
          ),
        ),
        const Text("Registro aéreo de Oriximiná - PA - Década de 1960"),
        Image.asset("imagens/cidade.jpeg",
        width: 190,
        height: 180,
        ),
        const Text("Foto: Piedade Brasil"),
        const Padding(
          padding: EdgeInsets.all(16.0), 
          child: Text("Entretanto essas terras foram habitadas por povos indígenas nômades e semi-nômades desde tempos imemoriais. Por volta de 1815, escravos fugidos das lavouras de cacau e das fazendas de gado da região do Baixo Amazonas refugiaram-se entre as comunidades indígenas da região, formando quilombos.",
          textAlign: TextAlign.justify,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0), 
          child: Text('Esses quilombos estabeleceram inúmeras povoações ao longo da bacia do Trombetas e do Erepecurú. Inicialmente seus assentamentos ficavam acima das cachoeiras, nas "águas bravas", com suas localidades chamadas de mocambos e seus moradores de mocambeiros. Para eles, a floresta significou liberdade e suporte para a vida. A dificuldade de acesso os protegia das expedições que visavam destruir os mocambos.No final do século XIX e início do século XX, os quilombolas desceram as cachoeiras para ficar mais próximos da cidade para realizar transações comerciais. Neste mesmo período, as terras do Baixo e Médio Trombetas estavam sendo adquiridas por colonizadores interessados nos produtos da floresta, notadamente a madeira e a castanha-do-brasil. Desde então, acirraram-se os conflito pela terra das comunidades remanescentes de quilombos da região, que chegou a abrigar o que foi considerado o "Quilombo dos Palmares da Amazônia". Algumas dessas comunidades são tão importantes nos dias atuais, que formam distritos administrativos, como é o caso de Cachoeira Porteira.',
            textAlign: TextAlign.justify,
          ),
        ),

        const Padding(
          padding: EdgeInsets.all(16.8),
          child: Text("Registro aéreo de Oriximiná - PA - Entre os anos  de 1970 e 1980"),
        ),
        Image.asset("imagens/oriximinaPassado.jpeg",
        width: 300,
        height: 151,
        ),

        const Text("Foto: Prefeitura Municipal de Oriximiná"),
        const LocalizacaoORX(),
          
        
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
