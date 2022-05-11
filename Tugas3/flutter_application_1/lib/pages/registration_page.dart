import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_screen.dart';
import 'package:flutter_application_1/pages/login_page.dart';

// ignore: camel_case_types
class registrationPage extends StatefulWidget {
  const registrationPage({Key? key}) : super(key: key);

  @override
  State<registrationPage> createState() => _registrationPageState();
}

// ignore: camel_case_types
class _registrationPageState extends State<registrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(35, 40, 40, 5),
        margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Registration',
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: 'MontserratRegular',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                'images/Logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 0),
                  ),
                  filled: false,
                  hintText: 'Email',
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  icon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 0),
                  ),
                  filled: false,
                  hintText: 'Username',
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: const Icon(Icons.key),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 0),
                  ),
                  filled: false,
                  hintText: 'Password',
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(90, 40),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const homePage(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Sudah memiliki akun?',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const loginPage(),
                    ),
                  );
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
