import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pharmaco/SignUp.dart';
import 'package:pharmaco/homepage.dart';
import 'package:pharmaco/login.dart';

class auth_page extends StatelessWidget {
  const auth_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user logged in
        if (snapshot.hasData) {
          return Home();
        }
        //user not logged in
        else {
          return login();
        }
      },
    ));
  }
}
