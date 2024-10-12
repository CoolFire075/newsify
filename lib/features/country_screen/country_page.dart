import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsify/features/news/presentation/bloc/news_bloc.dart';

import '../../core/di/dependency_injection.dart';
import '../../generated/l10n.dart';
import '../news/presentation/models/country_model.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewsBloc>()..add(NewsCountryLoaded()),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    context.pop(true);
                  },
                  icon: const Icon(
                    Icons.save,
                    size: 30,
                  ),
                ))
          ],
          backgroundColor: Colors.blue,
          title: Expanded(
            child: Text(
              S.of(context).choose_country,
              style: const TextStyle(fontSize: 35),
            ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            return ListView(
              children: state.countryModels
                  .map((e) => _CountryButtonWidget(
                        country: e,
                      ))
                  .toList(),
            );
          },
        ),
        floatingActionButton: const _SelectAllButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class _SelectAllButton extends StatelessWidget {
  const _SelectAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewsBloc>();
    return FloatingActionButton(
      onPressed: () {
        bloc.add(NewsSelectAllButtonClicked());
      },
      child: const Icon(Icons.check_box),
    );
  }
}

class _CountryButtonWidget extends StatelessWidget {
  const _CountryButtonWidget({
    super.key,
    required this.country,
  });

  final CountryModel country;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewsBloc>();
    return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(country.isSelected ? Colors.blue : Colors.grey.shade200),
          ),
          onPressed: () {
            bloc.add(CountryButtonClicked(model: country));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  country.country.getName(context),
                  style: TextStyle(
                      color: country.isSelected ? Colors.white : Colors.blue.shade700,
                      fontSize: 40),
                ),
              ),
              Icon(
                country.isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                color: country.isSelected ? Colors.lightGreen : Colors.grey,
                size: 40,
              ),
            ],
          ),
        ));
  }
}
