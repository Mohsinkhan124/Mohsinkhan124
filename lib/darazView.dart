import 'package:flutter/material.dart';

class Darazview extends StatefulWidget {
  const Darazview({super.key});

  @override
  State<Darazview> createState() => _DarazviewState();
}

class _DarazviewState extends State<Darazview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amberAccent,
      // ),
      body: Column(
        children: [
          Expanded(
            child: Container(
            color:  const Color.fromARGB(255, 2, 149, 160),
            ),
          ),
          Expanded(
            child: Container(
            color:  Colors.green,
            ),
          ),
          Expanded(
            child: Container(
            color:  const Color.fromARGB(255, 247, 243, 22),
            ),
          ),
        ],
      ),
    );
  }
}