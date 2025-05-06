import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField(
      {super.key,
      required this.showMessage,
      required this.controller,
      required this.errorMessage});

  final String showMessage;
  final TextEditingController controller;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 344,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            label: Text(showMessage),
            fillColor: Colors.white,
            errorText: errorMessage,
          ),
        ),
      ),
    );
  }
}
