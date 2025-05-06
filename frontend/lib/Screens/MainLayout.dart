import 'package:flutter/material.dart';
import 'package:frontend/Screens/HomeScreen.dart';
import 'package:frontend/Screens/LoginScreen.dart';
import 'package:frontend/Screens/RegisterScreen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndexScreen = 0;
  final List<Widget> listOfScreens = [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndexScreen,
        onTap: (index) {
          setState(() {
            selectedIndexScreen = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_sharp),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: "Chats",
          ),
        ],
      ),
      body: listOfScreens[selectedIndexScreen],
    );
  }
}
