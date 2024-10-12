import 'package:equatable/equatable.dart';
import 'package:newsify/features/news/my_features/news_country.dart';

class CountryModel extends Equatable {
  final NewsCountry country;
  final bool isSelected;

  const CountryModel({
    required this.country,
    required this.isSelected,
  });

  CountryModel copyWith({
    NewsCountry? country,
    bool? isSelected,
  }) {
    return CountryModel(
      country: country ?? this.country,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [country, isSelected];
}
