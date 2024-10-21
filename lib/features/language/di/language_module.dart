import 'package:newsify/features/language/domain/repository/language_repository.dart';
import 'package:newsify/features/language/presentation/bloc/language_bloc.dart';

import '../../../core/di/dependency_injection.dart';
import '../data/repository/language_repository_impl.dart';
import '../data/service/language_firebase_service.dart';
import '../domain/interactor/language_interactor.dart';

void initLanguageModule() {
  getIt.registerLazySingleton(() => LanguageFirebaseService());
  getIt.registerLazySingleton<LanguageRepository>(() => LanguageRepositoryImpl(service: getIt()));
  getIt.registerFactory(() => LanguageInteractor(repository: getIt()));
  getIt.registerFactory(() => LanguageBloc(getIt()));
}
