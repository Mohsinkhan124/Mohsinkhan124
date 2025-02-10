// ignore: file_names
import 'package:flutter/material.dart';

class DarazhomeView extends StatefulWidget {
  const DarazhomeView({super.key});

  @override
  State<DarazhomeView> createState() => _DarazhomeViewState();
}

class _DarazhomeViewState extends State<DarazhomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
    child:   Column(
        children: [
          Container(
            height: 200,
            width: 500,
            decoration: const BoxDecoration(
               color: Colors.red,
              
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                  child: Text(
                    'Pa khair Raghley',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                     color: Colors.black
                    ),
                  ),
                  ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text(
                    'Pa khair Raghley',
                    style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.black
                    ),
                  ),
                  ),
              ],
            ),
            
          ),
          const SizedBox(height: 10,),
           GridView.builder(
            shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 10,
                ),
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Container(
                   child: Text('Mohsin khan $index'),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 5, 141, 10),
                    ),
                  );
                }),
          
        ],
      ),
      ),
    );
  }
}
