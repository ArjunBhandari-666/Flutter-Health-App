import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FancyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,
      fillColor: Color.white,
      child: Text("This Button"),
    );
  }
}
