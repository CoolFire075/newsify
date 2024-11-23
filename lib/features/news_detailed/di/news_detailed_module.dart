import 'package:newsify/features/news/presentation/models/news_data_model.dart';
import 'package:newsify/features/news_detailed/presentation/bloc/news_detailed_bloc.dart';

import '../../../core/di/dependency_injection.dart';

void initNewsDetailedModule() {
  getIt.registerFactoryParam((NewsDataModel? param1, param2) => NewsDetailedBloc(param1));
}