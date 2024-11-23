import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthLocalRepository {

  Stream<User?> get userStream;
  void saveUser(User user);
  User? getUser();
}