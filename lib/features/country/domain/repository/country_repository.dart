abstract class CountryRepository {
  Future saveCountries(List<String> countries);
  Future<List<String>> getCountries();
}
