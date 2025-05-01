import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  FormButton({super.key, required this.message});
  String message;
  late Color color;

  @override
  Widget build(BuildContext context) {
    color = message == "Login" ? Color(0xFFFFFFFF) : Color(0xFFA7E793);
    return Container(
      margin: EdgeInsets.all(10),
      height: 55,
      width: 262,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.35),
              offset: Offset(0, 4),
              blurRadius: 4),
        ],
      ),
      child: Center(
        child: Text(
          message,
        ),
      ),
    );
  }
}
