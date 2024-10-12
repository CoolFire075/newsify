import 'package:newsify/core/di/dependency_injection.dart';
import 'package:newsify/core/navigation/newsify_router.dart';

void initNavigationModule(){
  getIt.registerSingleton(NewsifyRouter());
}