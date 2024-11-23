import 'package:newsify/features/login/presentation/bloc/login_bloc.dart';

import '../../../core/di/dependency_injection.dart';

void initLoginModule(){
  
  getIt.registerFactory(()=>LoginBloc(authInteractor: getIt()));
}