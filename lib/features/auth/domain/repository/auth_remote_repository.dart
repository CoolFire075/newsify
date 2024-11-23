import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteRepository{
  Stream<User?> observeAuthState();

  Future<OAuthCredential> getGoogleCredential();

  Future<UserCredential> signInWithGoogle(OAuthCredential credential);
}