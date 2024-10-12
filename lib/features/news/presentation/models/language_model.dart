import 'package:equatable/equatable.dart';
import 'package:newsify/features/news/my_features/news_language.dart';

class LanguageModel extends Equatable {
  final NewsLanguage language;
  final bool isSelected;

  const LanguageModel({
    required this.language,
    required this.isSelected,
  });

  LanguageModel copyWith({
    NewsLanguage? language,
    bool? isSelected,
  }) {
    return LanguageModel(
      language: language ?? this.language,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [language, isSelected];
}
