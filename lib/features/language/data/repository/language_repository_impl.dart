import 'package:newsify/features/language/data/service/language_firebase_service.dart';

import '../../domain/repository/language_repository.dart';

class LanguageRepositoryImpl extends LanguageRepository {
  final LanguageFirebaseService service;

  LanguageRepositoryImpl({required this.service});

  @override
  Future saveLanguage(String language) {
    return service.setLanguage(language);
  }

  @override
  Future getLanguage() {
    return service.getLanguage();
  }
}
