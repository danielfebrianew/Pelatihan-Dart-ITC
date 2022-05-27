import 'package:flutter/material.dart';
import 'package:project/pages/beginningpage.dart';
import 'package:project/pages/bookmarkpage.dart';
import 'package:project/pages/friendspage.dart';
import 'package:project/pages/historypage.dart';
import 'package:project/pages/notificationpage.dart';
import 'package:project/pages/settingspage.dart';
import 'package:project/pages/wishlistpage.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(15),
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            buildHeader(),
            const SizedBox(height: 35),
            buildMenuItem(
              text: 'Friends',
              icon: Icons.people_alt_rounded,
              onClicked: () => selectedItem(context, 0),
            ),
            buildMenuItem(
              text: 'Notification',
              icon: Icons.notifications,
              onClicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: 'Wishlist',
              icon: Icons.favorite,
              onClicked: () => selectedItem(context, 2),
            ),
            buildMenuItem(
              text: 'Bookmark',
              icon: Icons.bookmark,
              onClicked: () => selectedItem(context, 3),
            ),
            buildMenuItem(
              text: 'History',
              icon: Icons.history,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 24),
            const Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 5),
            ),
            buildMenuItem(
              text: 'Logout',
              icon: Icons.logout,
              onClicked: () => selectedItem(context, 6),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem(
    {required String text, required IconData icon, VoidCallback? onClicked}) {
  const color = Colors.white;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: const TextStyle(color: color),
    ),
    hoverColor: Colors.white,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const FriendsPage(),
        ),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const NotificationPage(),
        ),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Wishlist(),
        ),
      );
      break;
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const BookmarkPage(),
        ),
      );
      break;
    case 4:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HistoryPage(),
        ),
      );
      break;
    case 5:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        ),
      );
      break;
    case 6:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const beginningPage(),
        ),
      );
      break;
  }
}

Widget buildHeader() => InkWell(
      child: Container(
        // color: const Color.fromRGBO(255, 163, 26, 1),
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage(
                'images/user.jpg',
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Daniel Febrian E.W.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'danielfebrian61@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
