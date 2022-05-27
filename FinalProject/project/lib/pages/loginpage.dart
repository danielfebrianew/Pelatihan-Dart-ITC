import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';
import 'package:project/pages/homepage.dart';
import 'package:project/pages/registrationpage.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(35, 40, 40, 5),
        margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: primaryBlack,
        ),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  color: Color.fromRGBO(255, 163, 26, 1),
                  fontSize: 45,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                style: const TextStyle(
                  color: Color.fromRGBO(255, 163, 26, 1),
                ),
                cursorColor: const Color.fromRGBO(255, 163, 26, 1),
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.person,
                    color: Color.fromRGBO(255, 163, 26, 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width: 3,
                      color: Color.fromRGBO(255, 163, 26, 1),
                    ),
                  ),
                  focusColor: Colors.white,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 14, 14, 14),
                  labelText: 'Username',
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(255, 163, 26, 1),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                style: const TextStyle(
                  color: Color.fromRGBO(255, 163, 26, 1),
                ),
                cursorColor: const Color.fromRGBO(255, 163, 26, 1),
                obscureText: true,
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.key,
                    color: Color.fromRGBO(255, 163, 26, 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(255, 163, 26, 1),
                      width: 3,
                    ),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 14, 14, 14),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_sharp,
                    color: Color.fromRGBO(255, 163, 26, 1),
                  ),
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(255, 163, 26, 1),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(255, 163, 26, 1),
                  onPrimary: Colors.black,
                  shadowColor: Colors.orangeAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: const Size(90, 40),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const homepage(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Belum punya akun?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const registrationPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 163, 26, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
