import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  void _showMenuModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Positioned(
              right: 20,
              top: kToolbarHeight + 10,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: const Color(0xFF001540),
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nome do Usuário',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'emaildousuario@gmail.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        leading: Icon(Icons.star, color: Colors.white),
                        title: Text(
                          'Avaliar aplicativo',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          // Ação para avaliar o aplicativo
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.exit_to_app, color: Colors.white),
                        title: Text('Sair', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Ação para sair
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          GestureDetector(
            onTap: () => _showMenuModal(context),
            child: Image.asset("imagens/menu.png"),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF001540),
      automaticallyImplyLeading: false,
    );
  }
}
