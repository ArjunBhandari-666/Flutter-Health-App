import 'dart:html';

import 'package:flutter/material.dart';

class Arjun extends StatelessWidget
{
  const Arjun({Key?key}):super(key: key)

  @override 
  Widget build(BuildContext context)
  {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.red,
       title: const Text("This is my Widget"),
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        CustomButton(
          onTap:(){},
          buttonText:'First Button'
          buttonColor: Colors.blue,
          textColor: Colors.white,
          BorderRadius:10,
        ),
        const SizedBox(
          height: 30,
        )
       ],
     ),
   ) 
  }
}
