import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/auth/auth.dart';

class LoginOrSignUpPage extends StatelessWidget {
  const LoginOrSignUpPage({
    super.key,
    required this.type,
  });

  final AccountType type;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(repository: context.read(), type: type),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
