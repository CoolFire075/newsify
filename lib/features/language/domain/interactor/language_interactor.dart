
import 'package:newsify/features/language/domain/repository/language_repository.dart';

class LanguageInteractor {

  final LanguageRepository repository;

  LanguageInteractor({required this.repository});

  Future saveLanguage(String language){
    return repository.saveLanguage(language);
  }
  Future getLanguage() {
    return repository.getLanguage();
  }
}