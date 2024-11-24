// import 'package:dialysis_practice/screens/bottomnav.dart';
import 'package:dialysis_practice/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffD7E9FF), // Set the background color globally
      ),
      home: const Dashboard(),
    );
  }
}
