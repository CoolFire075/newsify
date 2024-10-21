part of 'country_bloc.dart';
class CountryEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class CountryButtonClicked extends CountryEvent {
  final CountryModel model;

   CountryButtonClicked({required this.model});
}

class CountryLoaded extends CountryEvent {}

class CountrySelectAllButtonClicked extends CountryEvent {}

class CountrySaveButtonClicked extends CountryEvent{}

