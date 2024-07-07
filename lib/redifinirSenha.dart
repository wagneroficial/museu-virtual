import 'package:flutter/material.dart';
import 'package:museu/componentes/appBar.dart';
import 'package:museu/login.dart';
import 'package:museu/servicos/autenticar.dart';

class RedefinirSenhaScreen extends StatelessWidget {
  final Autenticar autenticar = Autenticar();
  final TextEditingController emailController = TextEditingController();

  void showSnackBar(BuildContext context, String mensagem) {
    final snackBar = SnackBar(content: Text(mensagem));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                size: 80,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              const Text(
                'Redefinir senha',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Digite o seu e-mail no campo abaixo e lhe enviaremos uma nova senha.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: emailController,  // Adicione o controlador aqui
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'Digite seu e-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final String email = emailController.text;
                    if (email.isNotEmpty) {
                      autenticar.redefinicaoSenha(email: email).then((String? erro) {
                        if (erro == null) {
                          showSnackBar(context, "E-mail de redefinição enviado com sucesso");
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        } else {
                          showSnackBar(context, "Erro ao enviar e-mail de redefinição: $erro");
                        }
                      });
                    } else {
                      showSnackBar(context, "Por favor, digite um e-mail válido");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA500), // Cor do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text(
                    'Redefinir senha',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
