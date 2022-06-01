// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:project/widget/searchbar_widget.dart';

class MyBooksPage extends StatefulWidget {
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  State<MyBooksPage> createState() => _MyBooksPageState();
}

class _MyBooksPageState extends State<MyBooksPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 40,
                  width: 20,
                ),
                Text(
                  "READING : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    // fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 278,
                ),
                Text(
                  "SEE ALL",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 163, 26, 1),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                    width: 15,
                  ),
                  _readingList(
                      "Bumi Manusia", "Pramoedya Ananta Toer", "bumi-manusia"),
                  const SizedBox(
                    width: 20,
                  ),
                  _readingList(
                    "Seperti Dendam Rindu Harus Dibayar Tuntas",
                    "Eka Kurniawan",
                    "seperti-dendam",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  _readingList(
                    "Norwegian Wood",
                    "Haruki Murakami",
                    "norwegian-wood",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 40,
                  width: 20,
                ),
                Text(
                  "READ : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    // fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "SEE ALL",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 163, 26, 1),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _readList(
                    "Cantik Itu Luka",
                    "Eka Kurniawan",
                    "cantik-itu-luka",
                  ),
                  _readList(
                    "Animal Farm",
                    "George Orwell",
                    "animal-farm",
                  ),
                  _readList(
                    "Eragon",
                    "Christopher Paolini",
                    "eragon",
                  ),
                  _readList(
                    "Gulliver's Travel",
                    "Jonathan Swift",
                    "gullivers-travel",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _readingList(
    String bookName,
    String bookAuthor,
    String imageName,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(5),
      width: 300,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(104, 0, 0, 0),
              // color: Colors.orange,
              blurRadius: 3,
              spreadRadius: 1,
              offset: Offset(10, 7)),
        ],
      ),
      alignment: Alignment.center,
      child: ListTile(
        enabled: true,
        title: Text(
          bookName,
          style: const TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "by " + bookAuthor,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        leading: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 60,
          ),
          child: Image.asset(
            "images/" + imageName + ".jpg",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _readList(
    String bookName,
    String bookAuthor,
    String imageName,
  ) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 10, 10, 10),
      padding: const EdgeInsets.all(15),
      width: 180,
      height: 275,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(104, 0, 0, 0),
            // color: Colors.orange,
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(10, 7),
          ),
        ],
      ),
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 100,
              maxHeight: 155,
            ),
            child: Image.asset(
              "images/" + imageName + ".jpg",
              fit: BoxFit.fitHeight,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            bookName,
            style: const TextStyle(
              color: Color.fromRGBO(255, 163, 26, 1),
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "by " + bookAuthor,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star_border, color: Colors.white),
              Icon(Icons.star_border, color: Colors.white),
              Icon(Icons.star_border, color: Colors.white),
              Icon(Icons.star_border, color: Colors.white),
              Icon(Icons.star_border, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
