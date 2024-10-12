part of 'news_bloc.dart';

class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object?> get props => [];
}

class CountryButtonClicked extends NewsEvent {
  final CountryModel model;

  const CountryButtonClicked({required this.model});
}

class LanguageButtonClicked extends NewsEvent {
  final LanguageModel model;

  const LanguageButtonClicked({required this.model});
}

class NewsCountryLoaded extends NewsEvent {}

class NewsLanguageLoaded extends NewsEvent{}

class NewsSelectAllButtonClicked extends NewsEvent {}
