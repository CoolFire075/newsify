import 'package:newsify/core/navigation/routes/home_route.dart';

class LanguageRoute {
  static const String name = '/language';

  static String getRouteWithArgs() {
    return '${HomeRoute.name}$name'; // identical to -> if(id == 5) then  '/note/5'
  }
}