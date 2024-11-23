import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:newsify/core/navigation/routes/login_route.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/network/constants.dart';
import '../../../../generated/l10n.dart';
import '../bloc/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>()
        ..add(ProfileUserSubscribed())
        ..add(ProfileCurrentUserLoaded()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).profile,
            style: const TextStyle(fontSize: 35),
          ),
          backgroundColor: NetworkConstants.appBarColor,
          centerTitle: true,
        ),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final user = state.user;
        final isLoading = state.isLoading;
        if (isLoading)
          return Center(
            child: CircularProgressIndicator(),
          );
        if (user == null) return _AuthorizeButton();
        return ListView(
          children: [
            _ProfileImage(),
            _UsernameText(),
            _EmailText(),
            TextButton(
              onPressed: () {
                context.go(LoginRoute.getRouteWithArgs());
              },
              child: Center(
                child: Text(
                  S.of(context).login,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _AuthorizeButton extends StatelessWidget {
  const _AuthorizeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.go(LoginRoute.getRouteWithArgs());
        },
        child: Text(
          S.of(context).login,
        ),
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return const _ProfileImageRounded(
              image: 'assets/icons/ic_question_user.svg',
            );
          }
          final imageLink = user.photoURL;
          if (imageLink == null) {
            return const _ProfileImageRounded(
              image: 'assets/icons/ic_user.svg',
            );
          }
          return MaterialButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Dialog(
                        insetAnimationDuration: const Duration(seconds: 3),
                        insetAnimationCurve: Curves.decelerate,
                        backgroundColor: Colors.transparent,
                        child: TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0.0, end: 1.0),
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          builder: (context, double scale, child) {
                            return Transform.scale(
                              scale: scale,
                              child: child,
                            );
                          },
                          child: Image.network(
                            imageLink,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(imageLink), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(100)),
            ),
          );
        },
      ),
    );
  }
}

class _ProfileImageRounded extends StatelessWidget {
  final String image;

  const _ProfileImageRounded({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 100, width: 100, child: SvgPicture.asset(image));
  }
}

class _EmailText extends StatelessWidget {
  const _EmailText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      final email = state.user?.email;
      if (email == null) return const SizedBox();
      return Center(child: Text(email));
    });
  }
}

class _UsernameText extends StatelessWidget {
  const _UsernameText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      final username = state.user?.displayName;
      if (username == null) return const SizedBox();
      return Center(child: Text(username, style: TextStyle(fontSize: 30),));
    });
  }
}
