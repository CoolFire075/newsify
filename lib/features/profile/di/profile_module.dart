import 'package:newsify/features/profile/presentation/bloc/profile_bloc.dart';

import '../../../core/di/dependency_injection.dart';

void initProfileModule(){
  getIt.registerFactory(()=> ProfileBloc(authInteractor: getIt()));
}