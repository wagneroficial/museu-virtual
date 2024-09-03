import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Acervo extends StatefulWidget {
  const Acervo({super.key});

  @override
  State<Acervo> createState() => _AcervoState();
}

class _AcervoState extends State<Acervo> {
  final String _url = 'https://my.matterport.com/show/?m=g8nJHcBuDJK';

  Future<void> _launchURL() async {
    if (!await launch(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.56),
        ),
        margin: const EdgeInsets.only(bottom: 25),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.56),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffBF7300),
                Color(0xFFEB9B00),
              ],
            ),
          ),
          height: 63.82,
          width: 252.48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/360.png",
                width: 38,
                height: 38,
              ),
              Container(
                margin: const EdgeInsets.only(right: 80),
                padding: const EdgeInsets.only(top: 20, left: 15),
                height: double.infinity,
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 3,
                    ),
                  ),
                ),
                child: const Text(
                  "Visita 360º",
                  style: TextStyle(fontSize: 16.09, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
