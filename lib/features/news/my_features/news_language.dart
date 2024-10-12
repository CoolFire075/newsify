import 'package:flutter/cupertino.dart';

import '../../../generated/l10n.dart';

enum NewsLanguage {
  arabic(name: 'Arabic', language: 'ar'),
  german(name: 'German', language: 'de'),
  english(name: 'English', language: 'en'),
  spanish(name: 'Spanish', language: 'es'),
  french(name: 'French', language: 'fr'),
  hebrew(name: 'Hebrew', language: 'he'),
  italian(name: 'Italian', language: 'it'),
  dutch(name: 'Dutch', language: 'nl'),
  norwegian(name: 'Norwegian', language: 'no'),
  portuguese(name: 'Portuguese', language: 'pt'),
  russian(name: 'Russian', language: 'ru'),
  swedish(name: 'Swedish', language: 'se'),
  chinese(name: 'Chinese', language: 'zh');

  const NewsLanguage({required this.name, required this.language});

  final String name;
  final String language;

  String getName(BuildContext context) {
    return switch (this) {
      NewsLanguage.arabic => S.of(context).arabic,
      NewsLanguage.german => S.of(context).german,
      NewsLanguage.english => S.of(context).english,
      NewsLanguage.spanish => S.of(context).spanish,
      NewsLanguage.french => S.of(context).french,
      NewsLanguage.hebrew => S.of(context).hebrew,
      NewsLanguage.italian => S.of(context).italian,
      NewsLanguage.dutch => S.of(context).dutch,
      NewsLanguage.norwegian => S.of(context).norwegian,
      NewsLanguage.portuguese => S.of(context).portuguese,
      NewsLanguage.russian => S.of(context).russian,
      NewsLanguage.swedish => S.of(context).swedish,
      NewsLanguage.chinese => S.of(context).chinese,
    };
  }
}
