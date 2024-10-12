import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/news/presentation/models/language_model.dart';

import '../../core/di/dependency_injection.dart';
import '../../generated/l10n.dart';
import '../news/presentation/bloc/news_bloc.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewsBloc>()..add(NewsLanguageLoaded()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Expanded(
            child: Text(
              S.of(context).choose_language,
              style: const TextStyle(fontSize: 35),
            ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            return ListView(
              children: state.languageModels
                  .map((e) =>
                  _LanguageButtonWidget(
                    language: e,
                  ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}

class _LanguageButtonWidget extends StatelessWidget {
  const _LanguageButtonWidget({
    super.key,
    required this.language,
  });

  final LanguageModel language;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewsBloc>();
    return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
            WidgetStatePropertyAll(language.isSelected ? Colors.blue : Colors.grey.shade200),
          ),
          onPressed: () {
            bloc.add(LanguageButtonClicked(model: language));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  language.language.getName(context),
                  style: TextStyle(
                      color: language.isSelected ? Colors.white : Colors.blue.shade700,
                      fontSize: 40),
                ),
              ),
              Icon(
                language.isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                color: language.isSelected ? Colors.lightGreen : Colors.grey,
                size: 40,
              ),
            ],
          ),
        ));
  }
}
