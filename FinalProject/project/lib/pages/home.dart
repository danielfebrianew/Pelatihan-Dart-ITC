import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
            width: 15,
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
                _genre("All"),
                const SizedBox(
                  width: 20,
                ),
                _genre("Comics"),
                const SizedBox(
                  width: 20,
                ),
                _genre("Fiction"),
                const SizedBox(
                  width: 20,
                ),
                _genre("Fantasy"),
                const SizedBox(
                  width: 20,
                ),
                _genre("Non-Fiction"),
                const SizedBox(
                  width: 20,
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
            width: 15,
          ),
          _ingfoText("RECOMMENDED : ", 225.0),
          const SizedBox(
            height: 10,
            width: 15,
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
                _recommendation(
                    "Laut Bercerita", "Leila S. Chudori", "laut-bercerita"),
                const SizedBox(
                  width: 20,
                ),
                _recommendation("A Poem with Your Name", "Adi K.", "a-poem"),
                const SizedBox(
                  width: 20,
                ),
                _recommendation("Sapiens", "Yuval Noah Harari", 'sapiens'),
                const SizedBox(
                  width: 20,
                ),
                _recommendation(
                    "Filosofi Teras", "Henry Manampiring", "filosofi-teras"),
                const SizedBox(
                  width: 20,
                ),
                _recommendation(
                    "Dunia Sophie", "Jostein Gaarder", "dunia-sophie"),
                const SizedBox(
                  width: 20,
                  height: 10,
                ),
              ],
            ),
          ),
          _ingfoText("POPULAR :", 275.0),
          const SizedBox(
            height: 10,
            width: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                _popularList("Ulysses Moore", "Pierdomenico Baccalario",
                    "ulysses-moore-kunci-utama"),
                const SizedBox(
                  width: 20,
                ),
                _popularList("Eragon", "Christopher Paolini", "eragon"),
                const SizedBox(
                  width: 20,
                ),
                _popularList("Max Havelaar", "Multatuli", "max-havelaar"),
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

  Widget _genre(String genreName) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(104, 0, 0, 0),
              // color: Colors.orange,
              blurRadius: 3,
              spreadRadius: 1,
              offset: Offset(7, 5)),
        ],
      ),
      alignment: Alignment.center,
      child: ListTile(
        enabled: true,
        title: Text(
          genreName,
          style: const TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  Widget _ingfoText(String inputText, double seeAllWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
          width: 20,
        ),
        Text(
          inputText,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            // fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: seeAllWidth,
        ),
        const Text(
          "SEE ALL",
          style: TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _recommendation(
    String genreName,
    String bookAuthor,
    String imageName,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
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
            ),
            child: Image.asset(
              "images/" + imageName + ".jpg",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            genreName,
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

  Widget _popularList(
    String bookName,
    String bookAuthor,
    String imageName,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 325,
      height: 130,
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
            fontSize: 23,
          ),
        ),
        subtitle: Text(
          "by " + bookAuthor,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
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
        trailing: SizedBox.fromSize(
          size: const Size.fromRadius(20),
          child: const FittedBox(
            child: Icon(
              Icons.add_circle_rounded,
              color: Color.fromRGBO(255, 163, 26, 1),
            ),
          ),
        ),
      ),
    );
  }
}
