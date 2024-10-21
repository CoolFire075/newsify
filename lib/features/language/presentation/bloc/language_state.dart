part of 'language_bloc.dart';

class LanguageState extends Equatable {
  final bool needPop;
  final bool isLoading;
  final String selectedLanguage;
  final List<LanguageModel> languageModels;

  const LanguageState({
    required this.needPop,
    required this.isLoading,
    this.selectedLanguage = 'ru',
    this.languageModels = const [],
  });

  LanguageState copyWith({
    bool? needPop,
    bool? isLoading,
    String? selectedLanguage,
    List<LanguageModel>? languageModels,
  }) {
    return LanguageState(
      needPop: needPop ?? this.needPop,
      isLoading: isLoading ?? this.isLoading,
      selectedLanguage: selectedLanguage ?? this.selectedLanguage,
      languageModels: languageModels ?? this.languageModels,
    );
  }

  @override
  List<Object?> get props => [
        needPop,
        isLoading,
        selectedLanguage,
        languageModels,
      ];
}
