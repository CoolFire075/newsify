import 'package:newsify/features/auth/data/repository/auth_local_repository_impl.dart';
import 'package:newsify/features/auth/data/repository/auth_remote_repository_impl.dart';
import 'package:newsify/features/auth/data/service/firebase_auth_service.dart';
import 'package:newsify/features/auth/domain/auth_interactor.dart';
import 'package:newsify/features/auth/domain/repository/auth_remote_repository.dart';
import 'package:newsify/features/auth/presentation/bloc/auth_bloc.dart';

import '../../../core/di/dependency_injection.dart';
import '../domain/repository/auth_local_repository.dart';

void initAuthModule() {
  getIt.registerLazySingleton(() => FirebaseAuthService());
  getIt.registerLazySingleton<AuthRemoteRepository>(
      () => AuthRemoteRepositoryImpl(authService: getIt()));
  getIt.registerFactory(() => AuthInteractor(remoteRepository: getIt(), localRepository: getIt()));
  getIt.registerLazySingleton<AuthLocalRepository>(() => AuthLocalRepositoryImpl());
  getIt.registerSingleton(AuthBloc(authInteractor: getIt()));
}