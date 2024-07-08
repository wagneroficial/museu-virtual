import 'package:flutter/material.dart';

class CaixasOpcao extends StatefulWidget {
  final Function(Map<String, bool>) onChanged;

  const CaixasOpcao({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<CaixasOpcao> createState() => _CaixasOpcaoState();
}

class _CaixasOpcaoState extends State<CaixasOpcao> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  bool _checkbox3 = false;
  bool _checkbox4 = false;
  bool _checkbox5 = false;

  void _onChanged() {
    widget.onChanged({
      'Maior facilidade de usar': _checkbox1,
      'Mais jogos interativos': _checkbox2,
      'Mais conteúdos sobre o Município': _checkbox3,
      'Outras ferramentas de imersão': _checkbox4,
      'Mais conteúdos históricos e culturais': _checkbox5,
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color checkBoxColor = const Color(0xFF001540);
    final EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0.2);
    final TextStyle textStyle = TextStyle(fontSize: 14);

    return Column(
      children: [
        CheckboxListTile(
          title: Text('Maior facilidade de usar', style: textStyle),
          value: _checkbox1,
          onChanged: (bool? newValue) {
            setState(() => _checkbox1 = newValue!);
            _onChanged();
          },
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
        CheckboxListTile(
          title: Text('Mais jogos interativos', style: textStyle),
          value: _checkbox2,
          onChanged: (bool? newValue) {
            setState(() => _checkbox2 = newValue!);
            _onChanged();
          },
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
        CheckboxListTile(
          title: Text('Mais conteúdos sobre o Município', style: textStyle),
          value: _checkbox3,
          onChanged: (bool? newValue) {
            setState(() => _checkbox3 = newValue!);
            _onChanged();
          },
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
        CheckboxListTile(
          title: Text('Outras ferramentas de imersão', style: textStyle),
          value: _checkbox4,
          onChanged: (bool? newValue) {
            setState(() => _checkbox4 = newValue!);
            _onChanged();
          },
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
        CheckboxListTile(
          title: Text('Mais conteúdos históricos e culturais', style: textStyle),
          value: _checkbox5,
          onChanged: (bool? newValue) {
            setState(() => _checkbox5 = newValue!);
            _onChanged();
          },
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: checkBoxColor,
          contentPadding: contentPadding,
          dense: true,
        ),
      ],
    );
  }
}
