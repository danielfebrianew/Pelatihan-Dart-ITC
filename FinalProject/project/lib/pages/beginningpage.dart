import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';
import 'package:project/pages/loginpage.dart';
import 'package:project/pages/registrationpage.dart';

// ignore: camel_case_types
class beginningPage extends StatefulWidget {
  const beginningPage({Key? key}) : super(key: key);

  @override
  State<beginningPage> createState() => _beginningPageState();
}

// ignore: camel_case_types
class _beginningPageState extends State<beginningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.fromLTRB(0, 200, 0, 10),
          decoration: const BoxDecoration(
            color: primaryBlack,
          ),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'images/landscapeLogo.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: primaryBlack, backgroundColor: const Color.fromRGBO(255, 163, 26, 1),
                        shadowColor: Colors.orangeAccent,
                        elevation: 3,
                        animationDuration: const Duration(milliseconds: 200),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          // fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const registrationPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: primaryBlack, backgroundColor: const Color.fromRGBO(255, 163, 26, 1),
                        shadowColor: Colors.orangeAccent,
                        elevation: 3,
                        animationDuration: const Duration(milliseconds: 200),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          // fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const loginPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
