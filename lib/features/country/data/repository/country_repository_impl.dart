import 'package:newsify/features/country/data/service/country_firebase_service.dart';
import 'package:newsify/features/country/domain/repository/country_repository.dart';

class CountryRepositoryImpl extends CountryRepository {
  final CountryFirebaseService service;

  CountryRepositoryImpl({required this.service});

  @override
  Future saveCountries(List<String> countries) {
    return service.setCountryList(countries);
  }

  @override
  Future<List<String>> getCountries() {
    return service.getCountryList();
  }
}
