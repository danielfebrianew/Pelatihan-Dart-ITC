import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends'),
        centerTitle: true,
        backgroundColor: primaryBlack,
      ),
    );
  }
}
