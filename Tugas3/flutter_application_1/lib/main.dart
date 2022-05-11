import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 3',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const loginPage(),
    );
  }
}
