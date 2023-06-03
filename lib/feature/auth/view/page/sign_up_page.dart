import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/auth/auth.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LargeTitlePage(
      title: 'Finish signing up',
      showDefaultLeading: true,
      body: _SignUpBody(),
    );
  }
}

class _SignUpBody extends StatefulWidget {
  const _SignUpBody();

  @override
  State<_SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<_SignUpBody> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSignUpForm(),
              _buildFinishButton(state.status == AuthStatus.loading),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSignUpForm() {
    return SignUpForm(
      formKey: _formKey,
      firstNameController: _firstNameController,
      lastNameController: _lastNameController,
      passwordController: _passwordController,
    );
  }

  Widget _buildFinishButton(bool isLoading) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: EasyBookingButton(
        text: 'Finish',
        isLoading: isLoading,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            context.read<AuthBloc>().add(
                  AuthEvent.accountSignedUp(
                    firstName: _firstNameController.text,
                    lastName: _lastNameController.text,
                    password: _passwordController.text,
                  ),
                );
          }
        },
        type: ButtonType.elevated,
        buttonStyleType: ButtonStyleType.dark,
      ),
    );
  }
}
