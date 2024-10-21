part of 'country_bloc.dart';

class CountryState extends Equatable {
  final bool needPop;
  final bool isLoading;
  final List<CountryModel> countryModels;

  const CountryState({
    required this.needPop,
    required this.isLoading,
    this.countryModels = const [],
  });

  CountryState copyWith({
    bool? needPop,
    bool? isLoading,
    List<CountryModel>? countryModels,
  }) {
    return CountryState(
      needPop: needPop ?? this.needPop,
      isLoading: isLoading ?? this.isLoading,
      countryModels: countryModels ?? this.countryModels,
    );
  }

  @override
  List<Object?> get props => [
        needPop,
        countryModels,
        isLoading,
      ];
}
