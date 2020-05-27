import "package:firebase_auth/firebase_auth.dart";

class AuthService {
  final FirebaseAuth __auth = FirebaseAuth.instance;

  // sign in Anonymously
  Future signInAnon() async {
    try {
      AuthResult authResult = await __auth.signInAnonymously();
      FirebaseUser user = authResult.user;
      return user;
    } catch(e) {
      print(e.toString());
      return null;
    }
  }


  // sign in with email and lpassword
}