import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/auth/auth.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LargeTitlePage(
      showDefaultLeading: true,
      title: 'Welcome back',
      body: _EnterPasswordBody(),
    );
  }
}

class _EnterPasswordBody extends StatefulWidget {
  const _EnterPasswordBody();

  @override
  State<_EnterPasswordBody> createState() => _EnterPasswordBodyState();
}

class _EnterPasswordBodyState extends State<_EnterPasswordBody> {
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _buildPasswordTextField(),
              _buildContinueButton(state),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPasswordTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Form(
        key: formKey,
        child: OutlinedTextField(
          errorMessage: errorMessage,
          controller: passwordController,
          autofocus: true,
          isPassword: true,
          label: 'Enter your password',
          textInputAction: TextInputAction.done,
          validator: _validateTextField,
        ),
      ),
    );
  }

  void _onContinueButtonPressed() {
    if (formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            AuthEvent.accountLoggedIn(password: passwordController.text),
          );
    }
  }

  String? _validateTextField(String? text) {
    if (text!.isEmpty) {
      return 'Enter password first';
    }
    return null;
  }

  Widget _buildContinueButton(AuthState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: EasyBookingButton(
        buttonStyleType: ButtonStyleType.dark,
        isLoading: state.status == AuthStatus.loading,
        text: 'Continue',
        onPressed: _onContinueButtonPressed,
        type: ButtonType.elevated,
      ),
    );
  }
}
