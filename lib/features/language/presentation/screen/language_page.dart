import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsify/features/language/presentation/bloc/language_bloc.dart';
import 'package:newsify/features/news/presentation/models/language_model.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../generated/l10n.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LanguageBloc>()..add(LanguageLoaded()),
      child: BlocListener<LanguageBloc, LanguageState>(
        listenWhen: (previous, current) => previous.needPop != current.needPop,
        listener: (context, state) {
          print('needpop: ${state.needPop}');
          if (state.needPop) {
            context.pop();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              S.of(context).choose_language,
              style: const TextStyle(fontSize: 35),
            ),
            centerTitle: true,
          ),
          body: _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        final isLoading = state.isLoading;
        if (isLoading) return const Center(child: CircularProgressIndicator());
        return ListView(
          children: state.languageModels
              .map((e) => _LanguageButtonWidget(
                    language: e,
                  ))
              .toList(),
        );
      },
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
    final bloc = context.read<LanguageBloc>();
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
