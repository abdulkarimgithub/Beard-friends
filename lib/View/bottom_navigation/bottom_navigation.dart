

import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Colors.red),
        unselectedLabelStyle: TextStyle(color: Colors.amberAccent),
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.print),label: "print"),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label: "settings"),
          BottomNavigationBarItem(icon:Icon(Icons.add),label: "add"),
        ],
      ),

    );
  }
}
