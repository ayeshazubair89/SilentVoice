import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:flutter_firebase_tasks/screens/home_screen.dart';
import 'package:flutter_firebase_tasks/screens/signin_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
