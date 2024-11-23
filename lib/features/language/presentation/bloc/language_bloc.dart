import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/language/domain/interactor/language_interactor.dart';
import 'package:newsify/features/news/presentation/models/language_model.dart';

import '../../../news/my_features/news_language.dart';

part 'language_event.dart';

part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(this.interactor) : super(const LanguageState(isLoading: false, needPop: false)) {
    on<LanguageLoaded>(_onNewsLanguageLoaded);
    on<LanguageButtonClicked>(_onLanguageButtonClicked);
  }

  final LanguageInteractor interactor;

  void _onLanguageButtonClicked(
    LanguageButtonClicked event,
    Emitter<LanguageState> emit,
  ) {
    final list = state.languageModels;
    final newList = list
        .map((model) => event.model.language == model.language
            ? model.copyWith(isSelected: event.model.isSelected ? false : true)
            : model)
        .toList();
    interactor.saveLanguage(event.model.language.language);
    emit(state.copyWith(
      languageModels: newList,
      selectedLanguage: event.model.language.language,
      needPop: true,
    ));
  }

  void _onNewsLanguageLoaded(
    LanguageLoaded event,
    Emitter<LanguageState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final selectedLanguage = await interactor.getLanguage();
    debugPrint('###LANGUAGE => $selectedLanguage');
    final languageModels = NewsLanguage.values
        .map((language) => LanguageModel(
            language: language, isSelected: selectedLanguage == language.language ? true : false))
        .toList();
    emit(state.copyWith(languageModels: languageModels, isLoading: false));
  }
}
