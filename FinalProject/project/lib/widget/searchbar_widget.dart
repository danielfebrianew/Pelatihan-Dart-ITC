// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => Animated_SearchBarState();
}

class Animated_SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: kElevationToShadow[3],
      ),
      child: TextField(
        enabled: true,
        style: const TextStyle(
          color: Color.fromRGBO(255, 163, 26, 1),
        ),
        cursorColor: const Color.fromRGBO(255, 163, 26, 1),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Color.fromRGBO(255, 163, 26, 1),
              width: 3,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 0,
            ),
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 14, 14, 14),
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromRGBO(255, 163, 26, 1),
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
