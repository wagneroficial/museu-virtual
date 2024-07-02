import 'package:flutter/material.dart';
import 'package:museu/componentes/appBar.dart';
import 'package:museu/login.dart';
import 'package:museu/servicos/autenticar.dart';

class CadastroScreen extends StatelessWidget {
  final Autenticar autenticar = Autenticar();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dataNascimentoController = TextEditingController();
  final TextEditingController sexoController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/fundo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'imagens/perfil.png',
                width: 75,
                height: 75,
              ),
              const SizedBox(height: 20),
              const Text(
                'Cadastro',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome de Usuário:',
                  hintText: 'Digite seu nome de usuário',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail:',
                  hintText: 'Digite seu e-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: dataNascimentoController,
                      decoration: InputDecoration(
                        labelText: 'Data de nascimento:',
                        hintText: 'dd/mm/aaaa',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: sexoController,
                      decoration: InputDecoration(
                        labelText: 'Sexo:',
                        hintText: 'Sou do sexo...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: senhaController,
                decoration: InputDecoration(
                  labelText: 'Senha:',
                  hintText: 'Mínimo de 6 caracteres',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: confirmarSenhaController,
                decoration: InputDecoration(
                  labelText: 'Confirme sua Senha:',
                  hintText: 'Mínimo de 6 caracteres',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final String nome = nomeController.text;
                    final String email = emailController.text;
                    final String dataNascimento = dataNascimentoController.text;
                    final String sexo = sexoController.text;
                    final String senha = senhaController.text;
                    final String confirmarSenha = confirmarSenhaController.text;

                    if (senha != confirmarSenha) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('As senhas não coincidem'),
                        ),
                      );
                      return;
                    }

                    autenticar.cadastrarUsuario(
                      email: email,
                      senha: senha,
                      nome: nome,
                    );

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFA726),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
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
