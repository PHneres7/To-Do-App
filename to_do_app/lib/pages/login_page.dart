import 'package:flutter/material.dart';
import 'package:to_do_app/pages/register_page.dart';
import 'package:to_do_app/widgets/decoration_circle.dart';
import 'package:to_do_app/widgets/my_button.dart';
import 'package:to_do_app/widgets/my_text_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Stack(
        children: [
          const DecorationCircle(),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset('assets/asset_login.png'),
                    const SizedBox(
                      height: 50,
                    ),
                    const MyTextForm(
                      hintText: 'Enter your email',
                    ),
                    const MyTextForm(
                      hintText: 'Password',
                      padding: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 30),
                    ),
                    const Text(
                      'Forget password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                    MyButton(
                      labelText: 'login',
                      route: (context) => const RegisterPage(),
                      padding: const EdgeInsets.only(top: 40, bottom: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: RichText(
                        text: const TextSpan(
                          text: "Don't have an account?",
                          children: <TextSpan>[
                            TextSpan(
                              text: " Sign Up",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
