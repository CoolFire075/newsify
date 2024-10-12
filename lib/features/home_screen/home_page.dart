import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsify/core/navigation/routes/country_route.dart';
import 'package:newsify/core/navigation/routes/language_route.dart';

import '../news/presentation/bloc/news_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Home Page',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: ListView(
          children: const [
            _ChangeLanguageButton(),
            _ChangeCountryButton(),
          ],
        ),
      ),
    );
  }
}

class _ChangeCountryButton extends StatelessWidget {
  const _ChangeCountryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.go(CountryRoute.getRouteWithArgs());
          },
          icon: const Icon(
            Icons.account_balance_rounded,
            size: 40,
          ),
        ),
      ],
    );
  }
}

class _ChangeLanguageButton extends StatelessWidget {
  const _ChangeLanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.go(LanguageRoute.getRouteWithArgs());
          },
          icon: const Icon(
            Icons.account_tree_outlined,
            size: 40,
          ),
        ),
      ],
    );
  }
}
