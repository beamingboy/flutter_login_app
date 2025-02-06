import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(40)),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
