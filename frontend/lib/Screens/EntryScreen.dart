import 'package:flutter/material.dart';
import 'package:frontend/Components/FormButton.dart';
import 'package:frontend/Screens/LoginScreen.dart';
import 'package:frontend/Screens/RegisterScreen.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            //The top (Header) part
            SizedBox(
              height: screenHeight * 0.2,
              child: Center(
                child: Text(
                  "Skill Swift",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),

            //Middle
            SizedBox(
              height: screenHeight * 0.55,
            ),

            //The bottom (Footers) part including the action buttons
            SizedBox(
              height: screenHeight * 0.25,
              child: Center(
                child: Column(
                  children: [
                    FormButton(
                      message: "Sign Up",
                      navigateFunc: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (ctx) => RegisterScreen()),
                      ),
                    ),
                    FormButton(
                      message: "Login",
                      navigateFunc: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (ctx) => LoginScreen()),
                      ),
                    ),
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
