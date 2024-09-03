import 'package:flutter/material.dart';
import 'package:museu/componentes/appBar.dart';
import 'package:museu/home.dart';
import 'package:museu/servicos/autenticar.dart';

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final Autenticar autenticar = Autenticar();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dataNascimentoController = TextEditingController();
  final TextEditingController sexoController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController = TextEditingController();
  bool _obscureText = true;
  bool _obscureConfirmText = true;

  void showSnackBar(BuildContext context, String mensagem) {
    final snackBar = SnackBar(content: Text(mensagem));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

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
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
                obscureText: _obscureText,
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
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureConfirmText = !_obscureConfirmText;
                      });
                    },
                  ),
                ),
                obscureText: _obscureConfirmText,
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
                      showSnackBar(context, 'As senhas não coincidem');
                      return;
                    }

                    autenticar.cadastrarUsuario(
                      email: email,
                      senha: senha,
                      nome: nome,
                    ).then((String? erro) {
                      if (erro == null) {
                        autenticar.entrarUsuario(email: email, senha: senha).then((String? loginErro) {
                          if (loginErro == null) {
                            showSnackBar(context, 'Cadastro e login realizados com sucesso');
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          } else {
                            showSnackBar(context, 'Cadastro realizado, mas erro ao fazer login: $loginErro');
                          }
                        });
                      } else {
                        showSnackBar(context, 'Erro ao cadastrar: $erro');
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA726),
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
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
