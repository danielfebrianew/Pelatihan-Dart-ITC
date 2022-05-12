import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        backgroundColor: primaryBlack,
      ),
    );
  }
}
