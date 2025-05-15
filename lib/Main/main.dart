// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ytapp2/Pages/LoginPage.dart';
import 'package:ytapp2/Pages/Data.dart';
import 'package:ytapp2/Pages/HomePage.dart';
import 'package:ytapp2/Pages/SignUpPage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Data(),
    child: MyFirstApp(),
  ));
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
