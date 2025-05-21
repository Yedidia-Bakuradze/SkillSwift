import 'package:flutter/material.dart';

class StatusRadialChart extends StatelessWidget {
  const StatusRadialChart({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      // Box settings
      width: screenWidth * 0.88,
      height: screenHeight * 0.19,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF77F035),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black.withOpacity(0.35),
              offset: Offset(0, 4),
            ),
          ]),

      // Inner widgets
      child: Row(
        children: [
          SizedBox(width: 15),
          CircleAvatar(
            radius: 0.28 * 0.5 * screenWidth * 0.88,
            child: Text(
              "",
              style: TextStyle(backgroundColor: Colors.white),
            ),
          ),
          SizedBox(width: screenWidth * 0.88 * 0.2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Open"),
              Text("Pending"),
              Text("In Progress"),
              Text("Due to be provided"),
              Text("Finished"),
              Text("Completed"),
            ],
          )
        ],
      ),
    );
  }
}
