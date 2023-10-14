import 'package:flutter/material.dart';
import 'package:quiz_route/main_page.dart';
import 'package:quiz_route/p1.dart';
import 'package:quiz_route/p2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: MainPage() ,
  
      

    );
  }
}



