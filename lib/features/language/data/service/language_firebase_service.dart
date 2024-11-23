import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class LanguageFirebaseService {
  // final FirebaseDatabase database = FirebaseDatabase.instance;

  DatabaseReference ref = FirebaseDatabase.instance.ref("language");

  Future setLanguage(String language) async {
    debugPrint('###LANGUAGE => $language');
    try {
      return ref.set(language.toString());
      debugPrint('SUCCESS');
    } on Exception catch(e) {
      debugPrint('###CATCH => $e');

    }
  }
  Future<String?> getLanguage() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('language').get();
    if (snapshot.exists) {
      print('#####FIREBASE_Language${snapshot.value}');
      return snapshot.value as String;
    } else {
      print('No data available.');
      return null;
    }
  }
}
