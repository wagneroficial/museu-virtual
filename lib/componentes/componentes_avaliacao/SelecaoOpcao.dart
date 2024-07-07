import 'package:flutter/material.dart';

class SelecaoOpcao extends StatefulWidget {
  final Color bolinhaCor;
  final Color numeroCor;

  const SelecaoOpcao({
    Key? key,
    this.bolinhaCor = const Color(0xFF001540),
    this.numeroCor = const Color(0xFF001540),
  }) : super(key: key);

  @override
  State<SelecaoOpcao> createState() => _SelecaoOpcaoState();
}

class _SelecaoOpcaoState extends State<SelecaoOpcao> {
  bool? _dificuldadeUso;

  Widget buildRadioRow(bool? value, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Radio<bool?>(
            value: value,
            groupValue: _dificuldadeUso,
            onChanged: (bool? newValue) {
              if (newValue != null) {
                setState(() {
                  _dificuldadeUso = newValue;
                });
              }
            },
            activeColor: widget.bolinhaCor,
          ),
          Text(
            text,
            style: TextStyle(color: widget.numeroCor),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRadioRow(true, "Sim"),
        buildRadioRow(false, "Não"),
      ],
    );
  }
}
