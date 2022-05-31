// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBooksPage extends StatefulWidget {
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  State<MyBooksPage> createState() => _MyBooksPageState();
}

class _MyBooksPageState extends State<MyBooksPage> {
  int boxWidth = 300;
  int boxHeight = 90;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            "CURRENTLY READING :",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                  width: 15,
                ),
                _firstBook(boxWidth, boxHeight),
                const SizedBox(
                  width: 20,
                ),
                _secondBook(boxWidth, boxHeight),
                const SizedBox(
                  width: 20,
                ),
                _thirdBook(boxWidth, boxHeight),
                const SizedBox(
                  width: 20,
                ),
                _fourthBook(),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _firstBook(int boxWidth, int boxHeight) {
    return Container(
      width: boxWidth.toDouble(),
      height: boxHeight.toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(
        //   color: Colors.white,
        // ),
        color: Colors.black,
      ),
      alignment: Alignment.center,
      child: ListTile(
        enabled: true,
        leading: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 60,
          ),
          child: Image.asset(
            'images/bumi-manusia.jpg',
            fit: BoxFit.contain,
          ),
        ),
        title: const Text(
          "Bumi Manusia",
          style: TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          "by Pramoedya Ananta Toer",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _secondBook(int boxWidth, int boxHeight) {
    return Container(
      width: boxWidth.toDouble(),
      height: boxHeight.toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(
        //   color: Colors.white,
        // ),
        color: Colors.black,
      ),
      alignment: Alignment.center,
      child: ListTile(
        enabled: true,
        leading: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 60,
          ),
          child: Image.asset(
            'images/seperti-dendam.jpg',
            fit: BoxFit.contain,
          ),
        ),
        title: const Text(
          "Seperti Dendam Rindu Harus Dibayar Tuntas",
          style: TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          "by Eka Kurniawan",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _thirdBook(int boxWidth, int boxHeight) {
    return Container(
      width: boxWidth.toDouble(),
      height: boxHeight.toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(
        //   color: Colors.white,
        // ),
        color: Colors.black,
      ),
      alignment: Alignment.center,
      child: ListTile(
        enabled: true,
        leading: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 60,
          ),
          child: Image.asset(
            'images/norwegian-wood.jpg',
            fit: BoxFit.contain,
          ),
        ),
        title: const Text(
          "Norwegian Wood",
          style: TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          "by Haruki Murakami",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _fourthBook() {
    return Container(
      width: boxWidth.toDouble(),
      height: boxHeight.toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(
        //   color: Colors.white,
        // ),
        color: Colors.black,
      ),
      alignment: Alignment.center,
      child: ListTile(
        enabled: true,
        leading: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 60,
          ),
          child: Image.asset(
            'images/cantik-itu-luka.jpg',
            fit: BoxFit.contain,
          ),
        ),
        title: const Text(
          "Cantik Itu Luka",
          style: TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          "by Eka Kurniawan",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
