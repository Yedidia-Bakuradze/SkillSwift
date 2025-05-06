import 'package:flutter/material.dart';
import 'package:frontend/Components/RoundedTextField.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  // Text Controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    // ignore: non_constant_identifier_names
    void VerifySignupValues() {
      String name = nameController.text;
      String email = emailController.text;
      String password = passwordController.text;
      String confirmPassword = confirmPasswordController.text;

      // Check that the password is matched
      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.white,
            content: Text(
              "The password don't match",
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      }
    }

    return Scaffold(
      body: Container(
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
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Ariel",
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.2),
              RoundedTextField(
                showMessage: "Enter your name:",
                controller: nameController,
              ),
              RoundedTextField(
                showMessage: "Enter your email:",
                controller: emailController,
              ),
              RoundedTextField(
                showMessage: "Enter your password:",
                controller: passwordController,
              ),
              RoundedTextField(
                showMessage: "Enter your password again:",
                controller: confirmPasswordController,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: VerifySignupValues,
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
