import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/di/dependency_injection.dart';
import '../bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
        ),
        body: const Column(
          children: [
            _EmailTextField(),
            _PasswordTextField(),
            _GoogleIconButton(),
          ],
        ),
      ),
    );
  }
}

class _GoogleIconButton extends StatelessWidget {
  const _GoogleIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    return SizedBox(
      height: 50,
      width: 50,
      child: IconButton(
        onPressed: () {
          bloc.add(LoginGoogleIconClicked());
        },
        icon: SvgPicture.asset('assets/icons/ic_google.svg'),
      ),
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(labelText: 'Password'),
      ),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(labelText: 'Email'),
      ),
    );
  }
}
