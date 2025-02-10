import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ludo/firebaselogin.dart';

class Firebasesinghup extends StatefulWidget {
  const Firebasesinghup({super.key});

  @override
  State<Firebasesinghup> createState() => _FirebasesinghupState();
}

class _FirebasesinghupState extends State<Firebasesinghup> {
  bool showPass = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  print(String s) {
    Text("Succesfully....");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
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
                        builder: (context) => const Firebaselogin()));
              },
              child: const Text("Singup"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                createUserWithEmailAndPassword();
              },
              child: const Text("Already login"),
            ),
          ],
        ),
      ),
    );
  }

  void createUserWithEmailAndPassword() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print('succefull boy');
    }
  }
}
