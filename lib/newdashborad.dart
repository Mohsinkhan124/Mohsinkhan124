import 'package:flutter/material.dart';

import 'package:ludo/screen.dart';

class Newdashborad extends StatefulWidget {
  const Newdashborad({super.key});

  @override
  State<Newdashborad> createState() => _NewdashboradState();
}

class _NewdashboradState extends State<Newdashborad> {
  int CurrentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
       
      ),
      body: getCurrentView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentIndex,
        onTap: (value) {
          setState(() {
            CurrentIndex = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Status'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_emergency), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Home'),
        ],
      ),
    );
  }

  getCurrentView() {
    if (CurrentIndex == 0) {
      return Container(
        child: const Text('mohsin'),
      );
    } else if (CurrentIndex == 1) {
      return const Screen();
    } else if (CurrentIndex == 2) {
      return Container(
        child: const Text("word"),
      );
    } else if (CurrentIndex == 3) {
      return Container(
        child: const Text("calls"),
      );
    }
  }
}
