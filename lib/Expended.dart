import 'package:flutter/material.dart';

class ExpendedView extends StatefulWidget {
  const ExpendedView({super.key});

  @override
  State<ExpendedView> createState() => _ExpendedViewState();
}

class _ExpendedViewState extends State<ExpendedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Expanded(
          child: Container(
           height: 100,
           width: 300,
            color: Colors.green,
          child:   const Text('Khan')),
          ),
         Expanded(
          child: Container(
           height: 100,
           width: 300,
            color: const Color.fromARGB(255, 76, 86, 175),
          child: const  Text('Khan', style: TextStyle(
            fontSize: 30,
           fontWeight: FontWeight.bold,
            color: Colors.black),
          )),
          ),
        
          
        ],
      ),
    );
  }
}