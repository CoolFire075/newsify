import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repository/auth_local_repository.dart';

class AuthLocalRepositoryImpl implements AuthLocalRepository {
  User? _user;

  final _controller = StreamController<User?>.broadcast();

  @override
  Stream<User?> get itemStream => throw UnimplementedError();

  Stream<User?> get userStream => _controller.stream;

  @override
  User? getUser() {
    return _user;
  }

  @override
  void saveUser(User user) {
    _user = user;
    _addToStream(user);
  }

  void _addToStream(User? user) => _controller.sink.add(user);
}
