import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class CountryFirebaseService {
  // final FirebaseDatabase database = FirebaseDatabase.instance;

  DatabaseReference ref = FirebaseDatabase.instance.ref("countries");

  Future setCountryList(List<String> countries) async {
    debugPrint('###LIST => $countries');
    try {
      return ref.set(countries.toString());
      debugPrint('SUCCESS');
    } on Exception catch (e) {
      debugPrint('###CATCH => $e');
    }
  }

  Future<List<String>> getCountryList() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('countries').get();

    if (!snapshot.exists) {
      debugPrint('###NO_VALUES => ${snapshot.value}');
      return [];
    }
    late bool needReps;
    List<String> list = [];
    String string = snapshot.value.toString().substring(0, snapshot.value.toString().length - 1);
    string.contains(',') ? needReps = true : false;
    while (needReps) {
      final str = string.substring(0, string.indexOf(','));
      string = string.substring(string.indexOf(',') + 2, string.length);
      list.add(str);
      if(!string.contains(',')) needReps = false;
    }
    debugPrint('#####FIREBASE_COUNTRIES${snapshot.value}');
    return list;
  }
}
