import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  static const routeName = '/information';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(index: 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 48, 16, 16),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.rocket_sharp, size: 48),
          ),
          const Card(
            elevation: 18,
            child: Material(
              color: Color.fromARGB(255, 248, 242, 242),
              child: Padding(
                padding: EdgeInsets.fromLTRB(24.0, 64, 24, 64),
                child: Text(
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black, fontSize: 24),
                    "This app uses Spaceflight News API available at https://www.spaceflightnewsapi.net/"),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
