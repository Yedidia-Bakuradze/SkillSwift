import 'package:flutter/material.dart';
import 'package:frontend/Components/FormButton.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: screenHeight * 0.2,
              child: Center(
                child: Text(
                  "Skill Swift",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.55,
            ),
            SizedBox(
              height: screenHeight * 0.25,
              child: Center(
                child: Column(
                  children: [
                    FormButton(message: "Login"),
                    FormButton(message: "Sign up"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
