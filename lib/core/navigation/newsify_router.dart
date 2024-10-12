import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsify/core/navigation/routes/country_route.dart';
import 'package:newsify/core/navigation/routes/home_route.dart';
import 'package:newsify/core/navigation/routes/language_route.dart';
import 'package:newsify/features/country_screen/country_page.dart';
import 'package:newsify/features/language_screen/language_page.dart';

import '../../features/home_screen/home_page.dart';

class NewsifyRouter {
  final GoRouter _router = GoRouter(
    initialLocation: HomeRoute.name,
    routes: [
      GoRoute(
          path: HomeRoute.name,
          pageBuilder: (context, state) => const MaterialPage(
                child: HomePage(),
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
          ]),
    ],
  );

  GoRouter get router => _router;
}
