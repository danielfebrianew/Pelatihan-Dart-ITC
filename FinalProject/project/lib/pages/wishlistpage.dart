import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
        backgroundColor: primaryBlack,
      ),
    );
  }
}
