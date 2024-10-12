import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:newsify/core/navigation/newsify_router.dart';
import 'core/di/dependency_injection.dart';
import 'features/news/presentation/bloc/news_bloc.dart';
import 'generated/l10n.dart';

void main() {
  initDependencyInjection();
  runApp(NewsifyApp(newsifyRouter: getIt()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => getIt<NewsBloc>(),
        child: NewsifyApp(newsifyRouter: getIt()),
      ),
    );
  }
}

class NewsifyApp extends StatelessWidget {
  const NewsifyApp({super.key, required this.newsifyRouter});

  final NewsifyRouter newsifyRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: newsifyRouter.router.routeInformationProvider,
      routeInformationParser: newsifyRouter.router.routeInformationParser,
      routerDelegate: newsifyRouter.router.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
      darkTheme: ThemeData(colorScheme: ColorScheme.dark()),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

