import 'package:flutter/material.dart';
import 'package:whatsapp_clone/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF303E46)),
      home: HomePage(),
    );
  }
}

// main color : 0xFF303E46
// second color : 0xFF455A64