abstract class LanguageRepository {
  Future saveLanguage(String language);
  Future<String?> getLanguage();
}
