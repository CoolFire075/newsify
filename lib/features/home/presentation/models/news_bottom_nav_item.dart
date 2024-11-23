

import 'package:newsify/core/navigation/routes/favourite_news_route.dart';

import '../../../../core/navigation/routes/home_route.dart';
import '../../../../core/navigation/routes/profile_route.dart';

enum NewsBottomNavItem {
  newsList(path: HomeRoute.name),
  favouriteNews(path: FavouriteNewsRoute.name),
  profile(path: ProfileRoute.name);

  final String path;

  const NewsBottomNavItem({required this.path});
}