import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenge'),
        backgroundColor: primaryBlack,
      ),
    );
  }
}
