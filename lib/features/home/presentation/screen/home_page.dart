import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../news_bottom_nav_bar.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../bloc/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(AuthUserSubscribed()),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => getIt<HomeCubit>(),
        ),
      ],
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: NewsBottomNavBar(
          navigationShell: navigationShell,
        ),
      ),
    );
  }
}
