import 'package:flutter/material.dart';

class AppBar extends StatefulWidget {
  const AppBar({super.key});

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
          child: Image.asset(
            "imagens/logo.png",
            width: 115,
            height: 40.16,
          ),
        ),
        Image.asset("imagens/menu.png")
      ],
    );
  }
}
