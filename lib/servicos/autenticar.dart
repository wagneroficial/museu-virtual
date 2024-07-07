import 'package:firebase_auth/firebase_auth.dart';

class Autenticar {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> entrarUsuario({required String email, required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: senha);
      print("Conta logada com sucesso!");
      return null;  // Sucesso
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "user-not-found":
          return "O e-mail não está cadastrado.";
        case "wrong-password":
          return "Senha incorreta.";
        default:
          return "Erro: ${e.code}";
      }
    }
  }

  Future<String?> cadastrarUsuario({
    required String email,
    required String senha,
    required String nome,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      await userCredential.user!.updateDisplayName(nome);
      print("Usuário cadastrado com sucesso!");
      return null;  // Sucesso
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          return "Este e-mail já está em uso.";
        case "weak-password":
          return "A senha é muito fraca.";
        default:
          return "Erro: ${e.code}";
      }
    }
  }

  Future<String?> redefinicaoSenha({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return null;  // Sucesso
    } on FirebaseAuthException catch (e) {
      return "Erro: ${e.code}";
    }
  }
}
