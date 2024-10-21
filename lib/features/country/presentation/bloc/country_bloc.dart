import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/country/domain/interactor/country_interactor.dart';

import '../../news_country.dart';
import '../../../news/presentation/models/country_model.dart';

part 'country_event.dart';

part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc(this.interactor) : super(const CountryState(isLoading: false, needPop: false)) {
    on<CountryLoaded>(_onCountryLoaded);
    on<CountrySelectAllButtonClicked>(_onCountrySelectAllButtonClicked);
    on<CountryButtonClicked>(_onCountryButtonClicked);
    on<CountrySaveButtonClicked>(_onCountrySaveButtonClicked);
  }

  final CountryInteractor interactor;

  void _onCountrySaveButtonClicked(
    CountrySaveButtonClicked event,
    Emitter<CountryState> emit,
  ) async {
    final list =
        state.countryModels.where((e) => e.isSelected).map((e) => e.country.country).toList();
    emit(state.copyWith(needPop: true));
    await interactor.saveCountries(list);
    debugPrint("SUCESSSSS>.");
  }

  void _onCountrySelectAllButtonClicked(
    CountrySelectAllButtonClicked event,
    Emitter<CountryState> emit,
  ) {
    final list = state.countryModels;
    final newList = list.map((model) => model.copyWith(isSelected: true)).toList();
    emit(state.copyWith(countryModels: newList));
  }

  void _onCountryLoaded(
    CountryLoaded event,
    Emitter<CountryState> emit,
  ) async {
    final selectedCountries = await interactor.getCountries();
    final countryModels = NewsCountry.values
        .map((country) => CountryModel(country: country, isSelected: country.country == selectedCountries))
        .toList();
    emit(state.copyWith(countryModels: countryModels));
  }

  void _onCountryButtonClicked(
    CountryButtonClicked event,
    Emitter<CountryState> emit,
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
enum MyEnum{
  val
}