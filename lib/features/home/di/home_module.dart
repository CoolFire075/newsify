
import '../../../core/di/dependency_injection.dart';
import '../presentation/bloc/home_cubit.dart';

void initHomeModule() {
  getIt.registerFactory(() => HomeCubit());
}
