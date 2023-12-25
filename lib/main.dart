import 'package:flutter/material.dart';
import 'package:pharmaco/SignUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pharmaco/auth_page.dart';
import 'package:pharmaco/test.dart';
import 'firebase_options.dart';
// import 'login.dart';
import 'package:pharmaco/Dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboardpage(),
    );
  }
}
