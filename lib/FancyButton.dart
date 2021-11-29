import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class FancyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: _incrementCounter(),
      fillColor: Color.white,
      child: Text("This Button"),
    );
  }
}
