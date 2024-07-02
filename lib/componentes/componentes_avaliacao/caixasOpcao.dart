import 'package:flutter/material.dart';

// ESSA PARTE ADICIONA VARIAS CAIXINHAS DE SELEÇÃO
class CaixasOpcao extends StatefulWidget {
  const CaixasOpcao({Key? key}) : super(key: key);

  @override
  State<CaixasOpcao> createState() => _CaixasOpcaoState();
}

class _CaixasOpcaoState extends State<CaixasOpcao> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  bool _checkbox3 = false;
  bool _checkbox4 = false;
  bool _checkbox5 = false;

  @override
  Widget build(BuildContext context) {
    final Color checkBoxColor =
        const Color(0xFF001540); // COR DA CAIXA SELECIONADA

    final EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(
      horizontal: 25.0,
      vertical: 0.2,
    ); // ESPAÇAMENTO ENTRE DISTANCIA DA TELA: HORIZONTAL E ENTRE AS CAIXAS VERTICAL

    final TextStyle textStyle =
        TextStyle(fontSize: 14); // TAMANHO DO TEXTO DAS CAIXAS

// EM CASO DE QUERER ADD MAIS OPÇOES, SÓ COPIAR E COLAR A CheckboxListTile, COLOCAR MAIS bool _checkbox5 = false;ALTERANDO O NUMERO DA CAIXA
    return Column(
      children: [
        CheckboxListTile(
          title: Text(
            'Maior facilidade de usar',
            style: textStyle,
          ),
          value: _checkbox1,
          onChanged: (bool? newValue) => setState(() => _checkbox1 = newValue!),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
        CheckboxListTile(
          title: Text(
            'Mais jogos interativos',
            style: textStyle,
          ),
          value: _checkbox2,
          onChanged: (bool? newValue) => setState(() => _checkbox2 = newValue!),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
        CheckboxListTile(
          title: Text(
            'Mais conteúdos sobre o Município',
            style: textStyle,
          ),
          value: _checkbox3,
          onChanged: (bool? newValue) => setState(() => _checkbox3 = newValue!),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
        CheckboxListTile(
          title: Text(
            'Outras ferramentas de imersão',
            style: textStyle,
          ),
          value: _checkbox4,
          onChanged: (bool? newValue) => setState(() => _checkbox4 = newValue!),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
        CheckboxListTile(
          title: Text(
            'Mais conteúdos históricos e culturais',
            style: textStyle,
          ),
          value: _checkbox5,
          onChanged: (bool? newValue) => setState(() => _checkbox5 = newValue!),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
      ],
    );
  }
}
