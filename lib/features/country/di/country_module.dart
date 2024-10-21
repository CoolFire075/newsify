import 'package:newsify/features/country/data/service/country_firebase_service.dart';
import 'package:newsify/features/country/domain/repository/country_repository.dart';

import '../../../core/di/dependency_injection.dart';
import '../data/repository/country_repository_impl.dart';
import '../domain/interactor/country_interactor.dart';
import '../presentation/bloc/country_bloc.dart';

void initCountryModule() {
  getIt.registerLazySingleton(()=> CountryFirebaseService());
  getIt.registerLazySingleton<CountryRepository>(() => CountryRepositoryImpl(service: getIt()));
  getIt.registerFactory(() => CountryInteractor(repository: getIt()));
  getIt.registerFactory(() => CountryBloc(getIt()));
}