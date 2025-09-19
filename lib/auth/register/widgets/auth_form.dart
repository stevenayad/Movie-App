import 'package:flutter/material.dart';
import 'package:movie/auth/widgets/custom_text_field.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: _fullNameController,
            title: 'Full Name',
            hint: 'Enter your full name',
            prefixIcon: Icons.person,
            validator: (value) =>
                value!.isEmpty ? 'Full name can\'t be empty' : null,
          ),

          CustomTextField(
            controller: _emailController,
            title: 'Email',
            hint: 'Enter your email',
            prefixIcon: Icons.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) =>
                value!.isEmpty ? 'Email can\'t be empty' : null,
          ),

          CustomTextField(
            controller: _passwordController,
            title: 'Password',
            hint: 'Enter your password',
            prefixIcon: Icons.lock,
            suffixIcon:
                _isPasswordHidden ? Icons.visibility : Icons.visibility_off,
            obscureText: _isPasswordHidden,
            onSuffixPressed: () {
              setState(() {
                _isPasswordHidden = !_isPasswordHidden;
              });
            },
            validator: (value) =>
                value!.length < 6 ? 'Password too short' : null,
          ),

          CustomTextField(
            controller: _confirmPasswordController,
            title: 'Confirm Password',
            hint: 'Re-enter your password',
            prefixIcon: Icons.lock,
            suffixIcon: _isConfirmPasswordHidden
                ? Icons.visibility
                : Icons.visibility_off,
            obscureText: _isConfirmPasswordHidden,
            onSuffixPressed: () {
              setState(() {
                _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
              });
            },
            validator: (value) =>
                value != _passwordController.text ? 'Passwords do not match' : null,
          ),
        ],
      ),
    );
  }
}
