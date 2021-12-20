import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({Key?key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );

  }
}

class FirstPage extends StatelessWidget{
  const FirstPage ({Key?key}) : super (key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("This is the Title"),
      ),
    );
  }
}

