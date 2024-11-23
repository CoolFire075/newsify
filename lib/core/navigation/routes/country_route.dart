import 'home_route.dart';

class CountryRoute {
  static const String name = '/country';

  static String getRouteWithArgs() {
    return '${HomeRoute.name}$name'; // identical to -> if(id == 5) then  '/note/5'
  }
}