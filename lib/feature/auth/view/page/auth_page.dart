import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/auth/auth.dart';
import 'package:licenta/resource/resource.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LargeTitlePage(
      title: 'Log in or Sign up',
      leading: GestureDetector(
        onTap: () {
          context.popRoute();
        },
        child: Asset.closeButton.widget(),
      ),
      body: const SafeArea(
        top: false,
        minimum: EdgeInsets.only(bottom: 16),
        child: _AuthBody(),
      ),
    );
  }
}

class _AuthBody extends StatefulWidget {
  const _AuthBody();

  @override
  State<_AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<_AuthBody> {
  final TextEditingController _emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state.status == AuthStatus.accountExists) {
          await context.pushRoute(const EnterPasswordRoute());
        } else if (state.status == AuthStatus.accountMissing) {
          await context.pushRoute(const SignUpRoute());
        } else if (state.status == AuthStatus.accountSignedUp) {
          await _signIn(state);
        } else if (state.status == AuthStatus.accountLoggedIn) {
          await _signIn(state);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildEmailField(),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Asset.easyBookingBig.sizedWidget(
                  size: const Size(400, 400),
                ),
              ),
              const Spacer(),
              _buildContinueButton(state),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmailField() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Form(
        key: formKey,
        child: OutlinedTextField(
          label: 'Email address',
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          validator: _validateTextField,
        ),
      ),
    );
  }

  String? _validateTextField(String? text) {
    if (text!.isEmpty) {
      return 'Add email address first';
    } else if (!EmailValidator.validate(text)) {
      return 'Wrong email format! Try again.';
    }

    return null;
  }

  Widget _buildContinueButton(AuthState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: EasyBookingButton(
        text: 'Continue',
        isLoading: state.status == AuthStatus.loading,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            context.read<AuthBloc>().add(
                  AuthEvent.checkUserExists(
                    email: _emailController.text,
                  ),
                );
          }
        },
        type: ButtonType.elevated,
        buttonStyleType: ButtonStyleType.dark,
      ),
    );
  }

  Future<void> _signIn(AuthState state) async {
    const secureStorage = FlutterSecureStorage();
    await secureStorage
        .write(key: StorageConstants.authKey, value: state.email)
        .whenComplete(() => context.router.replaceAll([const MainRoute()]));
  }
}
