import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Image Changer",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Remote Health"), // title of AppBar
          centerTitle: true, // align the title to the center of the AppBar
          titleSpacing: 0.0, // letter spacing for title
          backgroundColor:
              Colors.blue.shade200, // background color of the AppBar
          shadowColor: Colors.blue.shade700, // Shadow color for the AppBar
          elevation: 10.0, // Elevation of the AppBar
          toolbarHeight: 60.0, // Height of the toolbar
          toolbarOpacity: 1.0, // Opacity of the toolbar
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text("Results Homepage"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultsHomepage()),
                  );
                })
          ],
        ));
  }
}

class ResultsHomepage extends StatelessWidget {
  const ResultsHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text("Results Review"),
        centerTitle: true,
      ),
    );
  }
}

class TreatmentHomepage extends StatelessWidget {
  const TreatmentHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
