import 'package:flutter/material.dart';
import 'package:project/colors/colors.dart';
import 'package:project/pages/homepage.dart';
import 'package:project/pages/registrationpage.dart';

TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
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
                  height: 30,
                ),
                _textMasuk(),
                const SizedBox(
                  height: 50,
                ),
                _usernameField(),
                const SizedBox(
                  height: 25,
                ),
                _passwordField(),
                const SizedBox(
                  height: 45,
                ),
                _loginButton(),
                const SizedBox(
                  height: 30,
                ),
                _buttonDaftar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textMasuk() {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Masuk',
        style: TextStyle(
          color: Color.fromRGBO(255, 163, 26, 1),
          fontSize: 45,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      alignment: Alignment.center,
      child: TextField(
        enabled: true,
        controller: _usernameController,
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
    );
  }

  Widget _passwordField() {
    return Container(
      alignment: Alignment.center,
      child: TextField(
        enabled: true,
        controller: _passwordController,
        style: const TextStyle(
          color: Color.fromRGBO(255, 163, 26, 1),
        ),
        cursorColor: const Color.fromRGBO(255, 163, 26, 1),
        obscureText: _obscureText,
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
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: const Color.fromRGBO(255, 163, 26, 1),
            ),
          ),
          labelText: 'Password',
          labelStyle: const TextStyle(
            color: Color.fromRGBO(255, 163, 26, 1),
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(255, 163, 26, 1),
          onPrimary: Colors.black,
          shadowColor: Colors.orangeAccent,
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          minimumSize: const Size(90, 40),
        ),
        child: const Text(
          'Masuk',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          String text = "";
          if ((_usernameController.text == "daniel") &&
              (_passwordController.text == "daniel")) {
            text = "Login Berhasil!";
            _usernameController.text = "";
            _passwordController.text = "";
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const homepage(),
              ),
            );
          } else {
            text = "Login Gagal!";
            _usernameController.text = "";
            _passwordController.text = "";
          }

          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }

  Widget _buttonDaftar() {
    return Container(
      alignment: Alignment.center,
      child: Row(
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
      ),
    );
  }
}
