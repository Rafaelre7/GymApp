import 'package:firebase_auth/firebase_auth.dart';

class AuthenticatorService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  cadastrarUsuario ({
    required String nome,
    required String senha,
    required String email
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: senha);

         await userCredential.user!.updateDisplayName(nome);
    } on FirebaseAuthException catch (exception) {
      if(exception.code == "email-already-in-use"){
        print("O usuario ja esta cadastrado");
      }
    }
  }
}
