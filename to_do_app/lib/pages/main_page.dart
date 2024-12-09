import 'package:flutter/material.dart';
import 'package:to_do_app/pages/register_page.dart';

import 'package:to_do_app/widgets/decoration_circle.dart';
import 'package:to_do_app/widgets/final_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const DecorationCircle(),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/asset_main_page.jpg',
                  height: 200,
                  width: 200,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Get things with TODs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 110),
                  child: const Text(
                    'Organize sua rotina, alcance suas metas e torne seus dias mais produtivos. Com o TODs, você tem o controle das suas tarefas em um único lugar. Comece agora e veja como pequenas ações podem transformar seu dia a dia.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                FinalButton(
                  labelText: 'Get Started',
                  route: (context) => const RegisterPage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
