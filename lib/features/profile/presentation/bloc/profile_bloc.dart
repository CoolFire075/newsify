import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/auth/domain/auth_interactor.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<NewsDetailedEvent, ProfileState> {
  ProfileBloc({
    required AuthInteractor authInteractor,
  })  : _authInteractor = authInteractor,
        super(const ProfileState(isLoading: true, needPop: false)) {
    on<ProfileUserSubscribed>(_onProfileUserSubscribed);
    on<ProfileCurrentUserLoaded>(_onProfileCurrentUserLoaded);
  }

  final AuthInteractor _authInteractor;

  void _onProfileUserSubscribed(
    ProfileUserSubscribed event,
    Emitter<ProfileState> emit,
  ) {
    _authInteractor.observeLocalUser().listen((user) {
      emit(state.copyWith(user: user));
      debugPrint('PROFILE_BLOC => user : $user');
    });
  }

  void _onProfileCurrentUserLoaded(
    ProfileCurrentUserLoaded event,
    Emitter<ProfileState> emit,
  ) {
    final user = _authInteractor.getUser();
    emit(state.copyWith(user: user, isLoading: false));
  }
}
