import 'package:flutter/material.dart';

class OpcaoNota5 extends StatefulWidget {
  final double size; // Tamanho das bolinhas e dos números
  const OpcaoNota5({Key? key, this.size = 24.0}) : super(key: key);

  @override
  State<OpcaoNota5> createState() => _OpcaoNota5State();
}

class _OpcaoNota5State extends State<OpcaoNota5> {
  int? _selectedOption; // Inicialize como null para nenhuma opção selecionada

  Widget buildRadioRow(int value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: widget.size,
            height: widget.size,
            child: Theme(
              data: ThemeData(
                // Defina a cor da bolinha aqui
                unselectedWidgetColor: Colors.grey, // cor quando não selecionado
              ),
              child: Radio(
                value: value,
                groupValue: _selectedOption,
                onChanged: (int? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedOption = newValue;
                    });
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 5), // Espaço entre a bolinha e o número
          Text(
            value.toString(),
            style: TextStyle(fontSize: widget.size * 0.6), // Tamanho do número
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= 5; i++) buildRadioRow(i),
      ],
    );
  }
}
