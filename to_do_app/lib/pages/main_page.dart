import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //bolinha 1
          Positioned(
            top: -90,
            left: -10,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade100.withOpacity(1),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          //bolinha 2
          Positioned(
            top: -30,
            left: -90,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade200.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  width: 50,
                  child: const Text(
                    'Organize sua rotina, alcance suas metas e torne seus dias mais produtivos. Com o TODs, você tem o controle das suas tarefas em um único lugar. Comece agora e veja como pequenas ações podem transformar seu dia a dia.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
