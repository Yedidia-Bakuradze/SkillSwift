import 'package:flutter/material.dart';
import 'package:frontend/Components/FormButton.dart';
import 'package:frontend/Components/RoundedTextField.dart';
import 'package:frontend/Screens/MainLayout.dart';
import 'package:frontend/Screens/LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Text Controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String? nameErrorMsg;
  String? emailErrorMsg;
  String? passwordErrorMsg;
  String? confirmPasswordErrorMsg;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    @override
    void initState() {
      super.initState();
      nameErrorMsg = null;
      emailErrorMsg = null;
      passwordErrorMsg = null;
      confirmPasswordErrorMsg = null;
    }

    @override
    void dispose() {
      nameController.dispose();
      emailController.dispose();
      passwordController.dispose();
      confirmPasswordController.dispose();
      super.dispose();
    }

    // Verifies the provided feilds before registering
    void VerifySignupValues() {
      String name = nameController.text;
      String email = emailController.text;
      String password = passwordController.text;
      String confirmPassword = confirmPasswordController.text;

      // Debug message
      print(
          "Name: ${name} Email: ${email} Password: ${password} Confirm: ${confirmPassword}");

      // Sets an error messages on the text fields
      setState(() {
        nameErrorMsg = name.isEmpty ? "Name value is missing" : null;
        emailErrorMsg = email.isEmpty ? "Email value is missing" : null;
        passwordErrorMsg =
            password.isEmpty ? "Password value is missing" : null;
        confirmPasswordErrorMsg =
            confirmPassword.isEmpty ? "Confirm password is missing" : null;
      });

      // Check for a valid email address
      final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
      if (!emailRegex.hasMatch(email)) {
        setState(() {
          emailErrorMsg = emailErrorMsg ?? "Invalid email address";
        });
        return;
      }

      //TODO: Check if the email already exists

      // Check for the same provided passwords
      if (password != confirmPassword) {
        setState(() {
          passwordErrorMsg =
              passwordErrorMsg ?? "The password fields don't match";

          confirmPasswordErrorMsg =
              confirmPasswordErrorMsg ?? "The password fields don't match";
        });
        return;
      }

      // Move to the home page
      if (!name.isEmpty &&
          !email.isEmpty &&
          !password.isEmpty &&
          !confirmPassword.isEmpty) {
        //TODO: make a POST request to the server and create a new instance of the user
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
                    children: [
                      RoundedTextField(
                        showMessage: "Enter your name:",
                        controller: nameController,
                        errorMessage: nameErrorMsg,
                      ),
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
                      RoundedTextField(
                        showMessage: "Enter your password again:",
                        controller: confirmPasswordController,
                        errorMessage: confirmPasswordErrorMsg,
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
                        onPressed: VerifySignupValues,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF79DB4B),
                          shadowColor: Colors.black.withOpacity(0.35),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        ),
                        child: Text(
                          "Already have an account? Click to Login",
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
