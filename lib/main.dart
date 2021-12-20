import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trying dual screens',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("This is the AppBar"),
        backgroundColor: Colors.amber,
        elevation: 30.0,
      ),
      body: Center(
          child: ElevatedButton(
              child: const Text("Press to Navigate") ,
              onPressed: (){
                Navigator.push(context, const SecondPage())
              },
            ),
        ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("This is the Second Screen"),
        backgroundColor: Colors.amber,
        elevation: 30.0,
      ),
      body: Center(
          child: ElevatedButton(
              child: const Text("Go back") ,
              onPressed: (){
                Navigator.pop(context);
              },
            ),
        ),
    );
  }
}