import 'package:flutter/material.dart';

class LocalizacaoORX extends StatefulWidget {
  const LocalizacaoORX({super.key});

  @override
  State<LocalizacaoORX> createState() => _LocalizacaoORXState();
}

class _LocalizacaoORXState extends State<LocalizacaoORX> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Localização do \n município de Oriximiná",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text(
              "Localizado na zona fisiográfica do Baixo Amazonas, teve início em 1877, quando o Padre José Nicolino de Souza, natural de Faro, desbravou a região e fundou uma povoação denominada Uruá-Tapera ou Mura-Tapera, à margem esquerda do rio Trombetas.",
              textAlign: TextAlign.justify,
            ),
          ),
          const Text(
            "Mapa do Município de Oriximiná - Pará",
            textAlign: TextAlign.center,
          ),
          Image.asset(
            "imagens/mapaorx.jpeg",
            width: 207,
            height: 148,
          ),
          const Text(
            "Fonte: SIPAM, 2009 - Organização: Renato G. de Almeida",
            style: TextStyle(fontSize: 8),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text(
              "Elevação a Freguesia\n com nome de Santo\n Antônio de Uruá Tapera",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text("Com o crescimento da povoação de Uruá Tapera Nove anos depois da sua fundação e tendo uma evolução significativa despertava a atenção da Provincia do Pará a então povoação foi elevada à Freguesia de Santo Antônio de Uruá-Tapera, por ato de Joaquim da Costa Barradas, Presidente da Província do Pará e Desembargador do Estado Do Maranhão. Freguesia criada com a denominação de Santo Antônio do Uruá-Tapera, pela lei nº 1288, de 11-1886. Com este reconhecimento estadual tornou-se decisivo passo no desenvolvimento cada vez mais elevado da localidade alcançando notoridade politica no contexto regional.",
            textAlign: TextAlign.justify,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text(
              "Elevação a categoria de Vila",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text("Com desenvolvimento populacional e politico da pavoação de Santo Antônio de Urua Tapera levou ja na República o Estado do Pará A intervir de forma possitiva na vida administrativa na nascente povoação elevando a categoria de Vila modificando também sua denominação para Oriximiná. Ainda no mesmo ano a vila de Oriximiná foi elevada a Municipio, cuja instalação deu-se no dia 05 de Dezembro de 1894. Mantendo os mesmos limites da época da criação da Freguesia abrangiam o rio Trombetas, igarapé Sapucuá e Maria Pixi, com respectivo lago, até a boca do igarapé Timbó, seguindo ao Centro. Elevado à categoria de vila com a denominação de Oriximiná, pela lei nº 174, de 09-06- 1894. Instalado em 05-12-1894..",
            textAlign: TextAlign.justify,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text(
              "A Extinção do Municipio de Oriximiná em 1900 e a Divisão do Territorio entre Óbidos e Faro",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text("Com a extinção de Oriximiná, em 1900 pela lei nº 729, de 03-04-1900 e pelas ações politicas dos antigos politicos de Óbidos que viam o desenvolvimento de Oriximiná como uma ameaça aos anseios obidenses e o município esperimentava notorio desenvolvimento teve sua soberania cassada o seu território foi dividido entre os municípios de Faro e Óbidos.\n Porém, ficou anexado ao de Óbidos por mais de 30 anos tendo sofrido atraso no seu desenvolvimento e mesmo asssim o povo de Oriximiná jamais desistiu de reconquistar sua independência O topônimo de origem indígena é de difícil identificação. \n Em divisão administrativa referente ao ano de 1911, o distrito de Oriximina figura no município Óbidos. Assim permanecendo em divisão administrativa referente ao ano de 1933.",
            textAlign: TextAlign.justify,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text(
              "A Emancipação Definitiva",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text("COs desdobramentos e ações políticas da revolução de 1930 tiveram efeito também no muncipio de Oriximiná temdo esforços desmedidos dos políticos genuinamente da terra foi e tendo efeito a politica de interiorização do Estado promovido pelo então Interventor Federal do Estado do Pará Joaquim de Magalhães Cardoso Barata tendo assumido a governadoria do Estado do Pará em 12 de Novembro de 1930 e sua preocupação com as povoações ao longo de todo o Territorio Paraense provomoveu a reinstalação de diversos Municípios por todo o estado. \n Elevado novamente à categoria de município matida a denominação de Oriximiná, pelo decreto estadual nº 1442, de 24-12-1934. Em divisões territoriais datadas de 31-XII-1936 e 31-12-1937, o município é constituído do distrito sede. No quadro fixado para vigorar no período de 1944-1948, o município é constituído do distrito sede.\n Em divisão territorial datada de 1-VII-1960, o município é constituído do distrito sede. Assim permanecendo em divisão territorial datada de 2007. Santo Antônio do Uruá-Tapera para Oriximiná, alterado pela lei nº 174, de 09-06-1894 \n A colonização da região por parte dos europeus se deu a partir de 1877 por ação do padre José Nicolino de Sousa, nascido no município de Faro a partir de ascendência indígena. O padre fundou uma povoação na região, denominando-a Uruá-Tapera ou Murá-Tapera.",
            textAlign: TextAlign.justify,
            ),
          ),
          const Text("egistro aéreo de Oriximiná - PA - 11 de junho de 2018 "),
          Image.asset(
            "imagens/igreja.jpeg",
            width: 207,
            height: 148,
          ),
          const Text("Foto: Alexandre Iluminação "),
           const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text(
              "Referências:",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.8),
            child: Text(" Informações disponíveis na página da Prefeitura Municipal Oriximiná: https://www.oriximina.pa.gov.br/omunicipio.php. \n \n Livro Inventário ,Cultural, Social político e Econômico de Oriximiná , TAVARES João Walter pg 45-56 ano 2006.",
            textAlign: TextAlign.left,
            ),
          ),
        ],
        
      ),
    );
  }
}
