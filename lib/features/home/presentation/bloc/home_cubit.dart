import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(index: 0));

  void changeBottomNavItem(int index) => emit(HomeState(index: index));
}
