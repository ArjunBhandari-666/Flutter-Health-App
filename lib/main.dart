import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Image Changer",
    home: homePage(),
  ));
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App Bar"), // title of AppBar
        centerTitle: true, // align the title to the center of the AppBar
        titleSpacing: 0.0, // letter spacing for title
        backgroundColor:
            Colors.deepPurpleAccent, // background color of the AppBar
        shadowColor: Colors.blue, // Shadow color for the AppBar
        elevation: 10.0, // Elevation of the AppBar
        toolbarHeight: 60.0, // Height of the toolbar
        toolbarOpacity: 1.0, // Opacity of the toolbar
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home)), // Leading icon with function
        leadingWidth: 50.0, // Width of leading icon
      ),
      body: Center(
        child: ElevatedButton(
          child: Text,
        ),
      ),
    );
  }
}
