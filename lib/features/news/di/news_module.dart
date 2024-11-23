import 'package:newsify/features/news/data/api/news_api.dart';
import 'package:newsify/features/news/data/mappers/news_mapper.dart';
import 'package:newsify/features/news/data/repository/news_local_repository_impl.dart';
import 'package:newsify/features/news/domain/news_interactor.dart';
import 'package:newsify/features/news/domain/repository/news_remote_repository.dart';
import 'package:newsify/features/news/presentation/bloc/news_bloc.dart';
import 'package:newsify/features/news/presentation/mappers/news_model_mapper.dart';

import '../../../core/di/dependency_injection.dart';
import '../data/repository/news_remote_repository_impl.dart';
import '../domain/repository/news_local_repository.dart';

void initNewsModule() {
  getIt.registerLazySingleton(() => NewsApi());
  getIt.registerFactory(() => NewsMapper());
  getIt.registerFactory<NewsRemoteRepository>(() => NewsRemoteRepositoryImpl(getIt(), getIt()));
  getIt.registerFactory<NewsLocalRepository>(() => NewsLocalRepositoryImpl());

  getIt.registerFactory(() => NewsInteractor( localRepository: getIt(), remoteRepository: getIt()));
  getIt.registerFactory(()=> NewsModelMapper());
  getIt.registerFactory(() => NewsBloc(getIt(), getIt(), getIt()));
}
