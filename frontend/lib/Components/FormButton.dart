import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key, this.message});
  final message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 55,
      width: 262,
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Text(
          message,
        ),
      ),
    );
  }
}
