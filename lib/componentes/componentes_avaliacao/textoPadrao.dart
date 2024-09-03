import 'package:flutter/material.dart';
import 'package:museu/utils/globalColors.dart';

// ESSA PARTE TORNA O 'DESIGNER' DOS TEXTO NA TELA AVALIAÇAO
class TextoGlobalAvaliacao extends StatelessWidget {
  final String texto;

  const TextoGlobalAvaliacao({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Center(
        child: Text(
          texto,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.normal,
            fontSize: 18.0,
            color: GlobalColors
                .textColor, // Certifique-se de que GlobalColors.textColor está definida
          ),
        ),
      ),
    );
  }
}
