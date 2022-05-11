import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  int thisIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: thisIndex,
          onTap: (int index) {
            setState(() {
              thisIndex = index;
            });
          },
        ),
      ),
    );
  }
}
