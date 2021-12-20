import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Image Changer",
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Screen"),),
        body: Image.network('https://picsum.photos/250?image=9'),

          child: ElevatedButton(
            child: const Text("Next page"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Screen",
        ),),
        body: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/1/1a/Crystal_Project_computer.png'),

          child: ElevatedButton(
            child: const Text("Next page"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
