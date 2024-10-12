import 'package:get_it/get_it.dart';
import 'package:newsify/core/di/navigation_module.dart';
import 'package:newsify/features/news/di/news_module.dart';

final getIt = GetIt.instance;

void initDependencyInjection(){
  initNavigationModule();
  initNewsModule();
}