
import '../../../core/di/dependency_injection.dart';
import '../presentation/bloc/favourite_news_bloc.dart';

void initFavouriteNewsModule() {
  getIt.registerFactory(() => FavouriteNewsBloc(getIt()));
  // getIt.registerFactoryParam((List<NewsDataModel>? param1, param2) => FavouriteNewsBloc(param1));
}
