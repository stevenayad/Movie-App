import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAgreementRow extends StatelessWidget {
  const TermsAgreementRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: false,
            onChanged: (bool? _) {
            },
          ),
      
          const SizedBox(width: 4),
      
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.grey.shade300,
                ),
                children: [
                  const TextSpan(text: 'I agree to the '),
                  TextSpan(
                    text: 'Terms of Service',
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                      },
                  ),
      
                  const TextSpan(text: ' and '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: const TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        
                      },
                  ),
                  const TextSpan(text: '.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
