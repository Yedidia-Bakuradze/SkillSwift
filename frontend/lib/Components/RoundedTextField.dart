import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField(
      {super.key, required this.showMessage, required this.controller});
  final String showMessage;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            label: Text(showMessage),
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
