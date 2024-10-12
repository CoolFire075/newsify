part of 'news_bloc.dart';

class NewsState extends Equatable {
  final NewsMainModel? data;
  final bool isLoading;
  final List<CountryModel> countryModels;
  final List<LanguageModel> languageModels;

  const NewsState({
    this.data,
    this.countryModels = const [],
    this.languageModels = const [],
    required this.isLoading,
  });

  NewsState copyWith({
    NewsMainModel? data,
    bool? isLoading,
    List<CountryModel>? countryModels,
    List<LanguageModel>? languageModels,
  }) {
    return NewsState(
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
      countryModels: countryModels ?? this.countryModels,
      languageModels: languageModels ?? this.languageModels,
    );
  }

  @override
  List<Object?> get props => [
        data,
        isLoading,
        countryModels,
        languageModels,
      ];
}
