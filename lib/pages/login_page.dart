import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app/components/my_button.dart';
import 'package:login_app/components/my_textfield.dart';
import 'package:login_app/images/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Text Editing controller

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user
  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),

                //Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(
                  height: 50,
                ),

                //welcome back, you've have missed !
                Text(
                  'Welcome back, you\'ve have missed !',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),

                const SizedBox(
                  height: 50,
                ),

                // User name

                MyTextfield(
                  controller: emailController,
                  hintText: "username",
                  obscureText: false,
                ),
                //password
                SizedBox(
                  height: 20,
                ),
                MyTextfield(
                  controller: passwordController,
                  hintText: "passowrd",
                  obscureText: true,
                ),

                //forgot password
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Container(
                      alignment: Alignment.topRight,
                      child: Text('Forgot password')),
                ),

                SizedBox(
                  height: 20,
                ),

                //sign in button

                MyButton(
                  onTap: signUserIn,
                ),

                SizedBox(
                  height: 20,
                ),
                // or continue with

                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Or Continue With",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  // Google Button

                  SquareTile(imagePath: "lib/images/google.png"),

                  SizedBox(width: 10),

                  // Apple Button
                  SquareTile(imagePath: "lib/images/apple.png"),
                ]),
                // not a member? register Now
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member ?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
