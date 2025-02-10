import 'package:flutter/material.dart';
import 'package:ludo/screen.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
               Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.call)),
            ]
            ),
        ),
  body: TabBarView(
    children: [
       ListView(
            children: [
              ListTile(
                leading: const  CircleAvatar(
                 backgroundColor: Colors.black,
                   ),
                title: const Text('Jaanu'),
                trailing: const Icon(Icons.heart_broken),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Screen()),
                  );
                },
              ),
            ],
          ),
      Container(
          child: TabBar(tabs: [
            Icon(Icons.circle),
            Icon(Icons.circle),
            Icon(Icons.circle),
          ]),
      ),
      Container(
          child: const Text('Mohsin'),
      )
    ] 
  ),
    )
    );
  }
}