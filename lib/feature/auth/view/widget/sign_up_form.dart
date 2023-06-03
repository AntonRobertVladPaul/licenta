import 'package:flutter/material.dart';
import 'package:licenta/core/core.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController firstNameController,
    required TextEditingController lastNameController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _firstNameController = firstNameController,
        _lastNameController = lastNameController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _firstNameController;
  final TextEditingController _lastNameController;
  final TextEditingController? _passwordController;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameFocusNode = FocusNode();
  final _lastNameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Column(
        children: [
          _buildFirstNameField(),
          _buildLastNameField(),
          _buildPasswordField(),
        ],
      ),
    );
  }

  Widget _buildFirstNameField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: OutlinedTextField(
        controller: widget._firstNameController,
        textCapitalization: TextCapitalization.words,
        focusNode: _firstNameFocusNode,
        label: 'First name',
        validator: (text) {
          if (text!.isEmpty) {
            return 'First Name should not be empty';
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        onEditingComplete: _lastNameFocusNode.requestFocus,
      ),
    );
  }

  Widget _buildLastNameField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: OutlinedTextField(
        controller: widget._lastNameController,
        textCapitalization: TextCapitalization.words,
        focusNode: _lastNameFocusNode,
        label: 'Last name',
        validator: (text) {
          if (text!.isEmpty) {
            return 'Last Name should not be empty';
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        onEditingComplete: _passwordFocusNode.requestFocus,
      ),
    );
  }

  Widget _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: OutlinedTextField(
        controller: widget._passwordController,
        focusNode: _passwordFocusNode,
        textInputAction: TextInputAction.done,
        label: 'Enter your password',
        validator: (text) {
          if (text!.isEmpty) {
            return 'Create a password first';
          }
          if (text.length < 6) {
            return 'Password should have at least 6 characters';
          }
          return null;
        },
        isPassword: true,
      ),
    );
  }
}
