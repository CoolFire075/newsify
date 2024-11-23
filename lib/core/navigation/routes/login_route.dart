import 'package:newsify/core/navigation/routes/profile_route.dart';

class LoginRoute {
  static const String name = '/login';

  static String getRouteWithArgs() {
    return '${ProfileRoute.name}$name'; // identical to -> if(id == 5) then  '/note/5'
  }
}
