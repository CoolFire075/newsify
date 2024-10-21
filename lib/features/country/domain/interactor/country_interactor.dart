import 'package:newsify/features/country/domain/repository/country_repository.dart';

class CountryInteractor {

  final CountryRepository repository;

  CountryInteractor({required this.repository});

  Future saveCountries(List<String> countries){
    return repository.saveCountries(countries);
  }
  Future<List<String>> getCountries() {
    return repository.getCountries();
  }
}