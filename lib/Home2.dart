import 'package:flutter/material.dart';
import 'web_view_container.dart';

class Home2 extends StatelessWidget {
  final _links = ['https://www.google.com/'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _links.map((link) => WebViewContainer(link)).toList(),
                ))));
  }}
