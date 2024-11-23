import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/domain/auth_interactor.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthInteractor authInteractor,
  })  : _authInteractor = authInteractor,
        super(const LoginState(isLoading: false)) {
    on<LoginGoogleIconClicked>(_onLoginGoogleIconClicked);
  }

  final AuthInteractor _authInteractor;

  void _onLoginGoogleIconClicked(
    LoginGoogleIconClicked event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final credential = await _authInteractor.getGoogleCredential();
    final userCredential = await _authInteractor.signInWithGoogle(credential);
    debugPrint('userCredential ${userCredential.user?.email}');
    emit(state.copyWith(isLoading: false));
  }
}
