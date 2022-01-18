import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(const MaterialApp(
    title: "Remote Health",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(deviceHeight * 8 / 100),
        child: AppBar(
          title: const Text("Remote Health"), // title of AppBar
          centerTitle: true, // align the title to the center of the AppBar
          titleSpacing: 0.0, // letter spacing for title
          backgroundColor:
              Colors.blue.shade200, // background color of the AppBar
          shadowColor: Colors.blue.shade700, // Shadow color for the AppBar
          elevation: 10.0, // Elevation of the AppBar
          toolbarHeight: 60.0, // Height of the toolbar
          toolbarOpacity: 1.0,
        ),
        // Opacity of the toolbar
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Container(
                width: deviceWidth,
                height: deviceHeight * 0.46,
                color: const Color(0xFFD4EEF1),
                child: Center(
                    child: SizedBox(
                        width: deviceWidth * 0.90,
                        height: deviceHeight * 0.20,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                side: const BorderSide(
                                    color: Color(0xFFB09DFE),
                                    width: 10,
                                    style: BorderStyle.solid),
                                primary: Colors.white,
                                elevation: 10.0,
                                shadowColor: Colors.black,
                                onPrimary: Colors.black),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text("Results Review"),
                                Container(
                                  width: deviceWidth * 0.45,
                                  height: deviceHeight * 0.20 - 20.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/heartbeat.png'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResultsHomepage()),
                              );
                            })))),
          ),
          Flexible(
              child: Container(
            width: deviceWidth,
            height: deviceHeight * 0.46,
            color: const Color(0xFFD4EEF1),
            child: Center(
                child: SizedBox(
                    width: deviceWidth * 0.90,
                    height: deviceHeight * 0.20,
                    child: ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("Treatment Plan"),
                            Container(
                              width: deviceWidth * 0.45,
                              height: (deviceHeight * 0.20) - 25.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/med.png'),
                                    fit: BoxFit.scaleDown),
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            side: const BorderSide(
                                color: Color(0xFF8F93F9),
                                width: 10,
                                style: BorderStyle.solid),
                            primary: Colors.white,
                            elevation: 10.0,
                            shadowColor: Colors.black,
                            onPrimary: Colors.black),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TreatmentHomepage()),
                          );
                        }))),
          ))
        ],
      )),
    );
  }
}

class ResultsHomepage extends StatelessWidget {
  const ResultsHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: const Text("Results Review"),
          centerTitle: true,
          titleSpacing: 0.0, // letter spacing for title
          shadowColor: Colors.blue.shade700, // Shadow color for the AppBar
          elevation: 10.0, // Elevation of the AppBar
          toolbarHeight: deviceHeight * 0.08, // Height of the toolbar
        ),
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                child: Container(
                    width: deviceWidth,
                    height: deviceHeight * 0.23,
                    color: const Color(0xFFD4EEF1),
                    child: Center(
                      child: SizedBox(
                        width: deviceWidth * 0.90,
                        height: deviceHeight * 0.13,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFF4CACA),
                              onPrimary: Colors.black,
                              textStyle: const TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              side: const BorderSide(
                                  width: 4.0, color: Color(0xFFFB8989))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VitalSigns()),
                            );
                          },
                          child: const Text("Vital Signs"),
                        ),
                      ),
                    ))),
            Flexible(
                child: Container(
                    width: deviceWidth,
                    height: deviceHeight * 0.23,
                    color: const Color(0xFFD4EEF1),
                    child: Center(
                      child: SizedBox(
                        width: deviceWidth * 0.90,
                        height: deviceHeight * 0.13,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFF4CACA),
                              onPrimary: Colors.black,
                              textStyle: const TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              side: const BorderSide(
                                  width: 4.0, color: Color(0xFFFB8989))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LabResults()),
                            );
                          },
                          child: const Text("Lab Results"),
                        ),
                      ),
                    ))),
            Flexible(
                child: Container(
                    width: deviceWidth,
                    height: deviceHeight * 0.23,
                    color: const Color(0xFFD4EEF1),
                    child: Center(
                      child: SizedBox(
                        width: deviceWidth * 0.90,
                        height: deviceHeight * 0.13,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFF4CACA),
                              onPrimary: Colors.black,
                              textStyle: const TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              side: const BorderSide(
                                  width: 4.0, color: Color(0xFFFB8989))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RadioResults()),
                            );
                          },
                          child: const Text("Radiology Results"),
                        ),
                      ),
                    ))),
            Flexible(
                child: Container(
                    width: deviceWidth,
                    height: deviceHeight * 0.23,
                    color: const Color(0xFFD4EEF1),
                    child: Center(
                      child: SizedBox(
                        width: deviceWidth * 0.90,
                        height: deviceHeight * 0.13,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFF4CACA),
                              onPrimary: Colors.black,
                              textStyle: const TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              side: const BorderSide(
                                  width: 4.0, color: Color(0xFFFB8989))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OtherResults()),
                            );
                          },
                          child: const Text("Other Measurements"),
                        ),
                      ),
                    ))),
          ],
        )));
  }
}

class VitalSigns extends StatelessWidget {
  const VitalSigns({Key? key}) : super(key: key);
  InAppWebViewController controller;
  String url="";
  double progress =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text("Vital Signs"),
        centerTitle: true,
        titleSpacing: 0.0, // letter spacing for title
        shadowColor: Colors.blue.shade700, // Shadow color for the AppBar
        elevation: 10.0, // Elevation of the AppBar
        toolbarHeight: 60.0,
      ),
      body: SafeArea(child : Container( child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0)
                  child: progress <1.0> LinearProgressIndicator(value: progress) : Container(

                ),
            ),
          Expanded(child: Container(
          margin:const EdgeInsets.all(10.0)
          decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          child: InAppWebView(

    ),
          ))
          ],
        )
      ))
    );
  }
}

class LabResults extends StatelessWidget {
  const LabResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text("Lab Results"),
        centerTitle: true,
        titleSpacing: 0.0, // letter spacing for title
        shadowColor: Colors.blue.shade700, // Shadow color for the AppBar
        elevation: 10.0, // Elevation of the AppBar
        toolbarHeight: 60.0,
      ),
      backgroundColor: const Color(0xFFD4EEF1),
    );
  }
}

class RadioResults extends StatelessWidget {
  const RadioResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text("Radiology Results"),
        centerTitle: true,
        titleSpacing: 0.0, // letter spacing for title
        shadowColor: Colors.blue.shade700, // Shadow color for the AppBar
        elevation: 10.0, // Elevation of the AppBar
        toolbarHeight: 60.0,
      ),
      backgroundColor: const Color(0xFFD4EEF1),
    );
  }
}

class OtherResults extends StatelessWidget {
  const OtherResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text("Other Measurements"),
        centerTitle: true,
        titleSpacing: 0.0, // letter spacing for title
        shadowColor: Colors.blue.shade700, // Shadow color for the AppBar
        elevation: 10.0, // Elevation of the AppBar
        toolbarHeight: 60.0,
      ),
      backgroundColor: const Color(0xFFD4EEF1),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class TreatmentHomepage extends StatelessWidget {
  const TreatmentHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: const Text("Treatment Plan"),
          centerTitle: true,
          titleSpacing: 0.0, // letter spacing for title
          shadowColor: Colors.blue.shade700, // Shadow color for the AppBar
          elevation: 10.0, // Elevation of the AppBar
          toolbarHeight: 60.0, // Height of the toolbar
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Flexible(
                  child: Container(
                      width: deviceWidth,
                      height: deviceHeight * 0.30,
                      color: const Color(0xFFD4EEF1),
                      child: Center(
                        child: SizedBox(
                          width: deviceWidth * 0.90,
                          height: deviceHeight * 0.17,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFF4CACA),
                                onPrimary: Colors.black,
                                textStyle: const TextStyle(
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                side: const BorderSide(
                                    width: 4.0, color: Color(0xFFFB8989))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MedPage()),
                              );
                            },
                            child: const Text("Medication"),
                          ),
                        ),
                      ))),
              Flexible(
                  child: Container(
                      width: deviceWidth,
                      height: deviceHeight * 0.30,
                      color: const Color(0xFFD4EEF1),
                      child: Center(
                        child: SizedBox(
                          width: deviceWidth * 0.90,
                          height: deviceHeight * 0.17,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFF4CACA),
                                onPrimary: Colors.black,
                                textStyle: const TextStyle(
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                side: const BorderSide(
                                    width: 4.0, color: Color(0xFFFB8989))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DietPage()),
                              );
                            },
                            child: const Text("Diet"),
                          ),
                        ),
                      ))),
              Flexible(
                  child: Container(
                      width: deviceWidth,
                      height: deviceHeight * 0.30,
                      color: const Color(0xFFD4EEF1),
                      child: Center(
                        child: SizedBox(
                          width: deviceWidth * 0.90,
                          height: deviceHeight * 0.17,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFF4CACA),
                                onPrimary: Colors.black,
                                textStyle: const TextStyle(
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                side: const BorderSide(
                                    width: 4.0, color: Color(0xFFFB8989))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FollowUpPage()),
                              );
                            },
                            child: const Text("Follow Up"),
                          ),
                        ),
                      ))),
            ])));
  }
}

class MedPage extends StatelessWidget {
  const MedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DietPage extends StatelessWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FollowUpPage extends StatelessWidget {
  const FollowUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}