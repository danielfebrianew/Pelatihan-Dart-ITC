import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';
import 'package:project/pages/homepage.dart';
import 'package:project/pages/loginpage.dart';

// ignore: camel_case_types
class registrationPage extends StatefulWidget {
  const registrationPage({Key? key}) : super(key: key);

  @override
  State<registrationPage> createState() => _registrationPageState();
}

// ignore: camel_case_types
class _registrationPageState extends State<registrationPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(35, 40, 40, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: primaryBlack,
          ),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                _textDaftar(),
                const SizedBox(
                  height: 50,
                ),
                _emailField(),
                const SizedBox(
                  height: 25,
                ),
                _usernameField(),
                const SizedBox(
                  height: 25,
                ),
                _passwordField(),
                const SizedBox(
                  height: 30,
                ),
                _registerButton(),
                const SizedBox(
                  height: 20,
                ),
                _loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textDaftar() {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Daftar',
        style: TextStyle(
          color: Color.fromRGBO(255, 163, 26, 1),
          fontSize: 45,
          fontFamily: 'Arial',
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _emailField() {
    return Container(
      alignment: Alignment.center,
      child: TextField(
        enabled: true,
        cursorColor: const Color.fromRGBO(255, 163, 26, 1),
        style: const TextStyle(
          color: Color.fromRGBO(255, 163, 26, 1),
        ),
        decoration: InputDecoration(
          icon: const Icon(
            Icons.email,
            color: Color.fromRGBO(255, 163, 26, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              width: 3,
              color: Color.fromRGBO(255, 163, 26, 1),
            ),
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 14, 14, 14),
          labelText: 'Email',
          labelStyle: const TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      alignment: Alignment.center,
      child: TextField(
        enabled: true,
        cursorColor: const Color.fromRGBO(255, 163, 26, 1),
        style: const TextStyle(
          color: Color.fromRGBO(255, 163, 26, 1),
        ),
        obscureText: false,
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
          filled: true,
          fillColor: const Color.fromARGB(255, 14, 14, 14),
          labelText: 'Username',
          labelStyle: const TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      alignment: Alignment.center,
      child: TextField(
        enabled: true,
        cursorColor: const Color.fromRGBO(255, 163, 26, 1),
        style: const TextStyle(
          color: Color.fromRGBO(255, 163, 26, 1),
        ),
        obscureText: _obscureText,
        decoration: InputDecoration(
          icon: const Icon(
            Icons.key,
            color: Color.fromRGBO(255, 163, 26, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              width: 3,
              color: Color.fromRGBO(255, 163, 26, 1),
            ),
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 14, 14, 14),
          labelText: 'Password',
          suffixIcon: GestureDetector(
            onTap: () {
              setState(
                () {
                  _obscureText = !_obscureText;
                },
              );
            },
            child: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: const Color.fromRGBO(255, 163, 26, 1),
            ),
          ),
          labelStyle: const TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }

  Widget _registerButton() {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: primaryBlack, backgroundColor: const Color.fromRGBO(255, 163, 26, 1),
          shadowColor: Colors.orangeAccent,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          minimumSize: const Size(90, 40),
        ),
        child: const Text(
          'Daftar',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
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
    );
  }

  Widget _loginButton() {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sudah memiliki akun?',
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
                  builder: (context) => const loginPage(),
                ),
              );
            },
            child: const Text(
              'Masuk',
              style: TextStyle(
                color: Color.fromRGBO(255, 163, 26, 1),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
