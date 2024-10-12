import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/news/my_features/news_country.dart';
import 'package:newsify/features/news/my_features/news_language.dart';
import 'package:newsify/features/news/presentation/models/country_model.dart';
import 'package:newsify/features/news/presentation/models/language_model.dart';

import '../models/news_main_model.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(const NewsState(isLoading: false)) {
    on<NewsCountryLoaded>(_onNewsCountryLoaded);
    on<NewsLanguageLoaded>(_onNewsLanguageLoaded);
    on<CountryButtonClicked>(_onCountryButtonClicked);
    on<LanguageButtonClicked>(_onLanguageButtonClicked);
    on<NewsSelectAllButtonClicked>(_onNewsSelectAllButtonClicked);
  }

  void _onLanguageButtonClicked(
    LanguageButtonClicked event,
    Emitter<NewsState> emit,
  ) {
    final list = state.languageModels;
    final newList = list
        .map((model) => event.model.language == model.language
            ? model.copyWith(isSelected: event.model.isSelected ? false : true)
            : model)
        .toList();
    emit(state.copyWith(languageModels: newList));
  }

  void _onNewsSelectAllButtonClicked(
    NewsSelectAllButtonClicked event,
    Emitter<NewsState> emit,
  ) {
    final list = state.countryModels;
    final newList = list.map((model) => model.copyWith(isSelected: true)).toList();
    emit(state.copyWith(countryModels: newList));
  }

  void _onNewsCountryLoaded(
    NewsCountryLoaded event,
    Emitter<NewsState> emit,
  ) {
    final countryModels = NewsCountry.values
        .map((country) => CountryModel(country: country, isSelected: false))
        .toList();
    emit(state.copyWith(countryModels: countryModels));
  }

  void _onNewsLanguageLoaded(
      NewsLanguageLoaded event,
      Emitter<NewsState> emit,
      ) {
    final languageModels = NewsLanguage.values
        .map((language) => LanguageModel(language: language, isSelected: false))
        .toList();
    emit(state.copyWith(languageModels: languageModels));
  }

  void _onCountryButtonClicked(
    CountryButtonClicked event,
    Emitter<NewsState> emit,
  ) {
    final list = state.countryModels;
    final newList = list
        .map((model) => event.model.country == model.country
            ? model.copyWith(isSelected: event.model.isSelected ? false : true)
            : model)
        .toList();
    emit(state.copyWith(countryModels: newList));
  }
}
