import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Login Page"),
      //   backgroundColor: Colors.green,
      // ),
      body: Stack(
        children: <Widget>[
          backgroundWidget(),
          Positioned(
            child: loginFormWidget(),
            // set positioned in middle
            top: 100,
            left: 20,
            right: 20,
            bottom: 100,
          ),
        ],
      ),
    );
  }

  Widget backgroundWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/pam.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget loginFormWidget() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
      ),
      width: 100,
      height: 10,
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 10),
          Image.asset("assets/Pdam.png", width: 100, height: 100),
          const Center(
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    debugPrint('sayya diklik woy');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text("Login"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
