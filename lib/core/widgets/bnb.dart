import 'package:flutter/material.dart';

class Bnb extends StatefulWidget {
  const Bnb({super.key});

  @override
  State<Bnb> createState() => _BnbState();
}

int index = 0;

class _BnbState extends State<Bnb> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      showSelectedLabels: true,
      currentIndex: index,
      selectedLabelStyle: TextStyle(fontSize: 18),
      onTap: (value) => setState(() {
        index = value;
      }),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
      ],
    );
  }
}
