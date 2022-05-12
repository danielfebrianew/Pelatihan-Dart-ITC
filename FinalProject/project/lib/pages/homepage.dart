import 'package:flutter/material.dart';
import 'package:project/widget/drawer_widget.dart';

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
);

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Text('home', style: _textStyle),
    Text('shop', style: _textStyle),
    Text('settings', style: _textStyle),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          height: 45,
          width: 45,
          alignment: Alignment.center,
          // padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/landscapeLogo.png',
              ),
              // fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
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
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Norwegian Wood',
    'Bumi Manusia',
    'Filosofi Teras',
    'Laut Bercerita',
    'Bumi',
    'Dunia Sophie',
    "Gulliver's Travel",
    'Hujan',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var book in searchTerms) {
      if (book.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var book in searchTerms) {
      if (book.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
    // throw UnimplementedError();
  }
}
