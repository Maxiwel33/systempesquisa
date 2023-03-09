import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:opsystem/UserManager/usuarios.dart';
import 'package:opsystem/pages/conexao/Utils/firebase_erro.dart';

class UserManager {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signIn(
      {required Usuarios usuarios,
      required Function onFail,
      required Function onSucess}) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: usuarios.email, password: usuarios.password);
      onSucess();
    } on FirebaseAuthException catch (e) {
      onFail(getErrorString(e.code));
    }
  }
}
