
import 'package:flutter/material.dart';
import 'package:ludo/firebasesinghup.dart';

class Firebaselogin extends StatefulWidget {
  const Firebaselogin({super.key});

  @override
  State<Firebaselogin> createState() => _FirebaseloginState();
}

class _FirebaseloginState extends State<Firebaselogin> {
  bool showPass = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body:  Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              obscureText: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: passController,
              obscureText: !showPass,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {},
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Firebasesinghup()));
              },
              child: const Text("Pela se login bana he"),
            ),
          ],
        ),
      ),
    );
  }
}