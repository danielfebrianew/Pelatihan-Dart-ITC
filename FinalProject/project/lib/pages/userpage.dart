import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
        centerTitle: true,
        backgroundColor: primaryBlack,
      ),
    );
  }
}
