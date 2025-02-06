import 'package:flutter/material.dart';
import 'package:login_app/components/my_button.dart';
import 'package:login_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Text Editing controller

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
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
                  controller: usernameController,
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

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                )

                //google + apple sign in buttons

                // not a member? register Now
              ],
            ),
          ),
        ));
  }
}
