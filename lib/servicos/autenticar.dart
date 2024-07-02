import 'package:firebase_auth/firebase_auth.dart';

class Autenticar {
 final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

 Future<String?> entrarUsuario({required String email, required String senha}) async {
    try {
        await _firebaseAuth.signInWithEmailAndPassword(email: email, password: senha);
        print("Conta logada com sucesso!");
    } on FirebaseAuthException catch (e) {
        switch(e.code) {
            case "user-not-found":
                return "O e-mail não está cadastrado.";
            case "wrong-password":
                return "Senha incorreta.";
        }
        return e.code;
    }

    return null;
}

 cadastrarUsuario({
  required String email,
   required String senha,
    required String nome,
    }) async{
  try {
  UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
    email: email,
    password: senha,
    );
  
    await userCredential.user!.updateDisplayName(nome);
  print("Chegamos até aqui");
} on FirebaseAuthException catch (e) {
  // TODO
}
 }
Future<String?> redefinicaoSenha({required String email}) async{
    try {
        await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
        return e.code;
    }
    return null;
}
}