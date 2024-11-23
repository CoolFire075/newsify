import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features/home/presentation/bloc/home_cubit.dart';
import '../../../generated/l10n.dart';
import 'features/home/presentation/models/news_bottom_nav_item.dart';

class NewsBottomNavBar extends StatelessWidget {
  const NewsBottomNavBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final currentPath = navigationShell.shellRouteContext.routerState.fullPath;
        final navItemsList = NewsBottomNavItem.values.map((e) => e.path);
        debugPrint('list: ${navItemsList}?');
        debugPrint('route: ${currentPath}');
        if (!navItemsList.contains(currentPath)) return const SizedBox();
        return BottomNavigationBar(
          currentIndex: state.index,
          onTap: (index) {
            context.read<HomeCubit>().changeBottomNavItem(index);
            navigationShell.goBranch(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.checklist,
                ),
                label: S.of(context).news),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.favorite,
                ),
                label: S.of(context).favourite),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person,
              ),
              label: S.of(context).profile,
            )
          ],
        );
      },
    );
  }
}
