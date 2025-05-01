import 'package:flutter/material.dart';
import 'package:frontend/Components/FormButton.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Skill Swift",
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(
              height: 20,
            ),
            FormButton(message: "Login"),
            FormButton(message: "Sign up"),
          ],
        ),
      ),
    );
  }
}
