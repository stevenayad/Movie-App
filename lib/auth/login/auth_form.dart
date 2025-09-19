import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart'; 

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final GlobalKey  _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Form( 
      key: _formKey,
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
