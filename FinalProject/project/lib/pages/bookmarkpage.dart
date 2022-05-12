import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark'),
        centerTitle: true,
        backgroundColor: primaryBlack,
      ),
    );
  }
}
