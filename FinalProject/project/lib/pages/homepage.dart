import 'package:flutter/material.dart';
import 'package:project/widget/drawer_widget.dart';
import 'package:project/pages/mybooks.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: unused_element
const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
  color: Color.fromRGBO(255, 163, 26, 1),
);

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  int _currentIndex = 0;

  List<Widget> pages = const [
    Text('home', style: _textStyle),
    MyBooksPage(),
    Text('settings', style: _textStyle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: _appBar(),
      body: _mainBody(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      centerTitle: true,
      flexibleSpace: Container(
        height: 45,
        width: 45,
        alignment: Alignment.center,
        margin: const EdgeInsets.fromLTRB(0, 55, 0, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/landscapeLogo.png',
            ),
          ),
        ),
      ),
      actions: const [
        Icon(Icons.notifications),
      ],
    );
  }

  Widget _mainBody() {
    return SafeArea(
      child: Container(
        color: const Color.fromARGB(253, 27, 27, 27),
        alignment: Alignment.topLeft,
        child: pages[_currentIndex],
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: const Color.fromRGBO(255, 163, 26, 1),
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      child: NavigationBar(
        height: 90,
        backgroundColor: Colors.black,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: _currentIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromRGBO(255, 163, 26, 1),
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.my_library_books_rounded,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.my_library_books_outlined,
              color: Color.fromRGBO(255, 163, 26, 1),
            ),
            label: 'My Books',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.settings_outlined,
              color: Color.fromRGBO(255, 163, 26, 1),
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
