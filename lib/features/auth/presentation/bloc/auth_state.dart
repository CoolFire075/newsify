part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final User? user;

  const AuthState({this.user});

  AuthState copyWith({User? user}) {
    return AuthState(
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [user];
}
