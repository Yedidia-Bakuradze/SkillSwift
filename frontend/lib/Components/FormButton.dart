import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormButton extends StatelessWidget {
  FormButton({super.key, required this.message, required this.navigateFunc});
  String message;
  final Function navigateFunc;
  late Color color;

  @override
  Widget build(BuildContext context) {
    color = message == "Login" ? Color(0xFFFFFFFF) : Color(0xFFA7E793);
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.35),
              offset: Offset(0, 4),
              blurRadius: 4),
        ],
      ),
      child: ElevatedButton(
        onPressed: () => navigateFunc(),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(262, 55),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(
            fontFamily: "Ariel",
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
    // return
  }
}

      // Container(
      //   margin: EdgeInsets.all(10),
      //   height: 55,
      //   width: 262,
      //   decoration: BoxDecoration(
      //     color: color,
      //     borderRadius: BorderRadius.all(Radius.circular(10)),
      //     boxShadow: [
      //       BoxShadow(
      //           color: Colors.black.withOpacity(0.35),
      //           offset: Offset(0, 4),
      //           blurRadius: 4),
      //     ],
      //   ),
      //   child: Center(
      //     child: Text(
      //       message,
      //       style: TextStyle(fontSize: 20, fontFamily: "Ariel"),
      //     ),
      //   ),
      // ),