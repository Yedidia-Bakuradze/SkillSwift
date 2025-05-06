import 'package:flutter/material.dart';
import 'package:frontend/Components/RoundedTextField.dart';
import 'package:frontend/Screens/MainLayout.dart';
import 'package:frontend/Screens/RegisterScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? emailErrorMsg;
  String? passwordErrorMsg;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    void VerifyLoginDetails() {
      String email = emailController.text;
      String password = passwordController.text;

      setState(() {
        emailErrorMsg = email.isEmpty ? "Must provide an email address" : null;
        passwordErrorMsg = password.isEmpty ? "Must provide a password" : null;
      });

      // TODO: Check if the user exists

      // TODO: Check if the password is correct

      if (!email.isEmpty && !password.isEmpty) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MainLayout(),
          ),
        );
      }
    }

    return Scaffold(
      body: Container(
        // The style of the page
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE4F4E1),
              Color(0xFF4A963C),
            ],
          ),
        ),

        // The content on the page
        child: ListView(
          children: [
            Column(
              children: [
                // Header
                SizedBox(
                  height: screenHeight * 0.3,
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Ariel",
                      ),
                    ),
                  ),
                ),

                // The fields
                SizedBox(
                  height: screenHeight * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedTextField(
                        showMessage: "Enter your email:",
                        controller: emailController,
                        errorMessage: emailErrorMsg,
                      ),
                      RoundedTextField(
                        showMessage: "Enter your password:",
                        controller: passwordController,
                        errorMessage: passwordErrorMsg,
                      ),
                    ],
                  ),
                ),

                // The submit and login buttons
                SizedBox(
                  height: screenHeight * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: VerifyLoginDetails,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF79DB4B),
                          shadowColor: Colors.black.withOpacity(0.35),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        ),
                        child: Text(
                          "Don't have an account? no worries signup here",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
