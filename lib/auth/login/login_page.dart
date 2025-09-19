import 'package:flutter/material.dart';
import 'package:movie/auth/login/auth_form.dart';
import 'package:movie/auth/login/widgets/another_signin.dart';
import 'package:movie/auth/login/widgets/line_with_text.dart';
import 'package:movie/auth/login/widgets/remember_forget_row.dart';
import 'package:movie/auth/register/register_page.dart';
import 'package:movie/auth/widgets/custom_AppBar.dart';
import 'package:movie/auth/widgets/custom_bottom_text.dart';
import 'package:movie/auth/widgets/custom_button.dart';
import 'package:movie/auth/widgets/header.dart';

class LoginPage extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
      appBar: CustomAppBar(title: 'Sign In'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Header(
              title: "Welcome Back",
              subtitle:"Sign in to continue watching" ,
              ),
              AuthForm(),
              RememberForgetRow(
                rememberMe: false,
                onRemember: (value) {
                  
                },
                onForgetPassword : () {
                  
                } ,
              ),

              CustomButton(
                text: ' Sign in',
                imagePath: "assets/icons/log-in.png",
                color: Colors.red,
                onPressed: () {
                  
                },
              ),

              LineWithText(text: "Or continue with",),

              AnotherSignin(),

              CustomBottomWidget(
                message: "Don't have an account?",
                actionText: "Sing Up",
                onActionTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterPage(),));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}