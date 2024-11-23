import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsify/core/navigation/routes/country_route.dart';
import 'package:newsify/core/navigation/routes/favourite_news_route.dart';
import 'package:newsify/core/navigation/routes/home_route.dart';
import 'package:newsify/core/navigation/routes/language_route.dart';
import 'package:newsify/core/navigation/routes/login_route.dart';
import 'package:newsify/core/navigation/routes/news_detailed_route.dart';
import 'package:newsify/core/navigation/routes/profile_route.dart';
import 'package:newsify/features/favourite_news/presentation/screen/favourite_news_page.dart';
import 'package:newsify/features/language/presentation/screen/language_page.dart';
import 'package:newsify/features/login/presentation/screen/login_page.dart';
import 'package:newsify/features/news/presentation/models/news_data_model.dart';
import 'package:newsify/features/news_detailed/presentation/screen/news_detailed_page.dart';
import 'package:newsify/features/profile/presentation/screen/profile_page.dart';

import '../../features/country/presentation/screen/country_page.dart';
import '../../features/home/presentation/screen/home_page.dart';
import '../../features/news/presentation/screen/news_page.dart';

class NewsifyRouter {
  final GoRouter _router = GoRouter(
    initialLocation: HomeRoute.name,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, child) => HomePage(navigationShell: child),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HomeRoute.name,
                pageBuilder: (context, state) => const MaterialPage(
                  child: NewsPage(),
                ),
                routes: [
                  GoRoute(
                    path: LanguageRoute.name,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: LanguagePage(),
                    ),
                  ),
                  GoRoute(
                    path: CountryRoute.name,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: CountryPage(),
                    ),
                  ),
                  GoRoute(
                    path: NewsDetailedRoute.name,
                    pageBuilder: (context, state) => MaterialPage(
                      child: NewsDetailedPage(model: state.extra as NewsDataModel),
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: FavouriteNewsRoute.name,
                pageBuilder: (context, state) => MaterialPage(
                  child: FavouriteNewsPage(
                    favouriteNews: state.extra as List<NewsDataModel>?,
                  ),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ProfileRoute.name,
                pageBuilder: (context, state) => const MaterialPage(
                  child: ProfilePage(),
                ),
                routes: [
                  GoRoute(
                    path: LoginRoute.name,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: LoginPage(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  GoRouter get router => _router;
}
