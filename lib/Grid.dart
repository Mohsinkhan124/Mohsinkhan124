import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List items = [
  
    {
      "name": "mohsin",
      "Father name": "Ali zaib" 
    },
    {
      "name": "Mohsin khan",
      "Father": "Ali zaib khan",
      "Address" : {
        "name23" : "mohsin khan amazai",
      }
    }
    
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3.0,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Expanded(
                      child: Text("${items[index]["address"]["name"]}",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),
                    ),
                    ),
                );
              })
        ],
      ),
    );
  }
}
