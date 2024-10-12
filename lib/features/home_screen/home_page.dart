import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsify/core/navigation/routes/country_route.dart';
import 'package:newsify/core/navigation/routes/language_route.dart';
import 'package:newsify/features/news/presentation/models/news_main_model.dart';

import '../../generated/l10n.dart';
import '../news/presentation/bloc/news_bloc.dart';
import '../news/presentation/models/news_data_model.dart';

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
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                      actions: [
                        _SettingsTitleWidget(),
                        _ChangeLanguageWidget(),
                        _ChangeCountryWidget(),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.settings,
                size: 35,
              ),
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
        body: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            final data = state.data?.data;
            print('### DATA => $data');
            return ListView(
              children: [
                if (data != null)
                  ...data
                     .map((e) => _NewsWidget(
                            data: e,
                          ))
              ],
            );
          },
        ),
      ),
    );
  }
}

class _NewsWidget extends StatelessWidget {
  const _NewsWidget({super.key, required this.data});

  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    return Row();
  }
}

class _SettingsTitleWidget extends StatelessWidget {
  const _SettingsTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).settings,
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}

class _ChangeCountryWidget extends StatelessWidget {
  const _ChangeCountryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.go(CountryRoute.getRouteWithArgs());
          },
          child: Text(
            S.of(context).change_country,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}

class _ChangeLanguageWidget extends StatelessWidget {
  const _ChangeLanguageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.go(LanguageRoute.getRouteWithArgs());
          },
          child: Text(
            S.of(context).change_language,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}
