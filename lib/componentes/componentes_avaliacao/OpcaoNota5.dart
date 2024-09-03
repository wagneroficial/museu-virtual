import 'package:flutter/material.dart';

class OpcaoNota5 extends StatefulWidget {
  final double size; // Tamanho das bolinhas e dos números
  final Function(int) onChanged;

  const OpcaoNota5({Key? key, this.size = 24.0, required this.onChanged}) : super(key: key);

  @override
  State<OpcaoNota5> createState() => _OpcaoNota5State();
}

class _OpcaoNota5State extends State<OpcaoNota5> {
  int? _selectedOption;

  void _onChanged(int value) {
    setState(() => _selectedOption = value);
    widget.onChanged(value);
  }

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
                unselectedWidgetColor: Colors.grey,
              ),
              child: Radio(
                value: value,
                groupValue: _selectedOption,
                onChanged: (int? newValue) {
                  if (newValue != null) {
                    _onChanged(newValue);
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value.toString(),
            style: TextStyle(fontSize: widget.size * 0.6),
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
