import 'package:newsify/features/news/data/api/news_api.dart';
import 'package:newsify/features/news/data/mappers/news_mapper.dart';
import 'package:newsify/features/news/domain/news_interactor.dart';
import 'package:newsify/features/news/domain/repository/news_repository.dart';
import 'package:newsify/features/news/presentation/bloc/news_bloc.dart';

import '../../../core/di/dependency_injection.dart';
import '../data/repository/news_repository_impl.dart';

void initNewsModule() {
  getIt.registerLazySingleton(() => NewsApi());
  getIt.registerFactory(() => NewsMapper());
  getIt.registerFactory<NewsRepository>(() => NewsRepositoryImpl(getIt(), getIt()));
  getIt.registerFactory(() => NewsInteractor(repository: getIt()));
  getIt.registerFactory(() => NewsBloc());
}
