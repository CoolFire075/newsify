import 'package:get_it/get_it.dart';
import 'package:newsify/core/di/navigation_module.dart';
import 'package:newsify/features/auth/di/auth_module.dart';
import 'package:newsify/features/home/di/home_module.dart';
import 'package:newsify/features/language/di/language_module.dart';
import 'package:newsify/features/login/di/login_module.dart';
import 'package:newsify/features/news/di/news_module.dart';
import 'package:newsify/features/profile/di/profile_module.dart';

import '../../features/country/di/country_module.dart';
import '../../features/favourite_news/di/favourite_news_module.dart';
import '../../features/news_detailed/di/news_detailed_module.dart';

final getIt = GetIt.instance;

void initDependencyInjection() {
  initNavigationModule();
  initNewsModule();
  initCountryModule();
  initLanguageModule();
  initHomeModule();
  initAuthModule();
  initNewsDetailedModule();
  initFavouriteNewsModule();
  initLoginModule();
  initProfileModule();
}
