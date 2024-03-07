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

  // Widget loginWidget() {
  //   return ListView(
  //     children: [
  //       SizedBox(
  //         height: 30,
  //       ),
  //       Padding(
  //         padding: EdgeInsets.all(10),
  //         child: Card(
  //           child: Padding(
  //             padding: EdgeInsets.all(20),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: [
  //                 Image.network(
  //                   "https://media.licdn.com/dms/image/C510BAQGb3ol0oHDZtQ/company-logo_200_200/0/1630614516528/inixindojogja_logo?e=2147483647&v=beta&t=7EFy5JIOpRVg7cw1TCGuOMDGgsn-iNp4wjrF4t6OQVo",
  //                   width: 100,
  //                 ),
  //                 Text(
  //                   "LOGIN PAGE",
  //                   style: Theme.of(context).textTheme.headlineLarge,
  //                 ),
  //                 Divider(),
  //                 SizedBox(
  //                   height: 30,
  //                 ),
  //                 Text(
  //                   "Email Account :",
  //                   style: Theme.of(context).textTheme.headlineSmall,
  //                 ),
  //                 Container(
  //                   padding: EdgeInsets.all(10),
  //                   decoration: BoxDecoration(
  //                     color: Theme.of(context).colorScheme.inversePrimary,
  //                     borderRadius: BorderRadius.all(Radius.circular(30)),
  //                   ),
  //                   child: TextFormField(
  //                     decoration: InputDecoration(
  //                         border: InputBorder.none,
  //                         labelText: "email@yourdomain.com",
  //                         hintText: "Isikan email Valid"),
  //                   ),
  //                 ),
  //                 Text(
  //                   "Password :",
  //                   style: Theme.of(context).textTheme.headlineSmall,
  //                 ),
  //                 Container(
  //                   padding: EdgeInsets.all(10),
  //                   decoration: BoxDecoration(
  //                     color: Theme.of(context).colorScheme.inversePrimary,
  //                     borderRadius: BorderRadius.all(Radius.circular(30)),
  //                   ),
  //                   child: TextFormField(
  //                     obscureText: tECPasswordVisible,
  //                     decoration: InputDecoration(
  //                         border: InputBorder.none,
  //                         suffixIcon: IconButton(
  //                           icon: tECPasswordVisible
  //                               ? Icon(Icons.remove_red_eye)
  //                               : Icon(Icons.panorama_fish_eye),
  //                           onPressed: () {
  //                             setState(() {
  //                               tECPasswordVisible = !tECPasswordVisible;
  //                             });
  //                           },
  //                         ),
  //                         labelText: "valid passwod",
  //                         hintText: "Isikan passwod anda"),
  //                   ),
  //                 ),
  //                 ElevatedButton(
  //                     onPressed: () {
  //                       OnlineAuth();
  //                     },
  //                     child: Text("LOGIN"))
  //               ],
  //             ),
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }
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
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: googleLogin,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.login), // This is the Google icon
                      SizedBox(
                          width:
                              4), // This adds some spacing between the icon and the text
                      Text("Login dengan Google"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void googleLogin() async {
    debugPrint('google login dipanggil');
  }
}
