import 'package:flutter/material.dart';
import 'package:movie/auth/login/login_page.dart';
import 'package:movie/auth/register/widgets/TermsAgreementRow.dart';
import 'package:movie/auth/register/widgets/auth_form.dart';
import 'package:movie/auth/widgets/custom_AppBar.dart';
import 'package:movie/auth/widgets/custom_bottom_text.dart';
import 'package:movie/auth/widgets/custom_button.dart';
import 'package:movie/auth/widgets/header.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
      appBar: CustomAppBar(title: "Sign Up"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Header(
                title: "Create Account", 
                subtitle: "Join us and start watching"),

                AuthForm(),

                TermsAgreementRow(),

                CustomButton(
                text: ' Create Account',
                imagePath: "assets/icons/user.png",
                color: Colors.red,
                onPressed: () {
                  
                },
              ),

              CustomBottomWidget(
                message: "Already have an account?",
                actionText: "Sing In",
                onActionTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}