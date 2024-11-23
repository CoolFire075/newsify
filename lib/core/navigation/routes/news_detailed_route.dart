
import 'home_route.dart';

class NewsDetailedRoute {
  static const String name = '/newsDetailed';

  static String getRouteWithArgs() {
    return '${HomeRoute.name}$name';// identical to -> if(id == 5) then  '/note/5'
  }
}