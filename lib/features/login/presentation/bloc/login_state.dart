part of 'login_bloc.dart';

class LoginState extends Equatable {
  final bool isLoading;

  const LoginState({required this.isLoading});

  LoginState copyWith({bool? isLoading}) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [];
}
