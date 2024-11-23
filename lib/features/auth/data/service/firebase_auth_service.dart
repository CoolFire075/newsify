import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User?> observeAuthState() {
    return _firebaseAuth.authStateChanges();
  }

  Future<UserCredential> signInWithCredential(OAuthCredential credential) async {
    return _firebaseAuth.signInWithCredential(credential);
  }
}
