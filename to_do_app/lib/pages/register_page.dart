import 'package:flutter/material.dart';
import 'package:to_do_app/pages/login_page.dart';
import 'package:to_do_app/pages/main_page.dart';
import 'package:to_do_app/widgets/decoration_circle.dart';
import 'package:to_do_app/widgets/my_button.dart';
import 'package:to_do_app/widgets/my_text_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Stack(
        children: [
          const DecorationCircle(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome to Onboard!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 80),
                    child: Text(
                      "Let's help to meet up your task",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const MyTextForm(
                    hintText: 'Enter your full name',
                  ),
                  const MyTextForm(
                    hintText: 'Enter your email',
                  ),
                  const MyTextForm(
                    hintText: 'Enter Passoword',
                  ),
                  const MyTextForm(
                    hintText: 'Confirm password',
                  ),
                  MyButton(
                    labelText: 'Register',
                    route: (context) => const LoginPage(),
                  ),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 18),
                      text: 'Already have an account? ',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign in',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
