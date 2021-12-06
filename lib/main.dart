import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 
  Widget @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("This is the AppBar"),
        backgroundColor: Colors.amber,
        elevation: 30.0,
      ),
    );
  }
}