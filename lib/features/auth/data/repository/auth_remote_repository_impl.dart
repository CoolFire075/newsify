import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:newsify/features/auth/data/service/firebase_auth_service.dart';
import 'package:newsify/features/auth/domain/repository/auth_remote_repository.dart';

class AuthRemoteRepositoryImpl implements AuthRemoteRepository {
  final FirebaseAuthService _authService;

  AuthRemoteRepositoryImpl({
    required FirebaseAuthService authService,
  }) : _authService = authService;

  @override
  Stream<User?> observeAuthState() {
    return _authService.observeAuthState();
  }

  @override
  Future<UserCredential> signInWithGoogle(OAuthCredential credential) async {
    return _authService.signInWithCredential(credential);
  }

  @override
  Future<OAuthCredential> getGoogleCredential() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return credential;
  }
}
