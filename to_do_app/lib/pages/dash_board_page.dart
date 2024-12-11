import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/decoration_circle.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Column(
          children: [
            //container azul
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                child: const Stack(
                  children: [
                    DecorationCircle(),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: CircleAvatar(
                                radius: 100,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                    'assets/asset_profile_dashboard.jpg'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                'Welcome UserName',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //container branco
            Expanded(
              flex: 3,
              child: Container(),
            ),
          ],
        ));
  }
}
