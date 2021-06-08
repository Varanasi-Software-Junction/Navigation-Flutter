import 'package:flutter/material.dart';
import 'vsjone.dart';
import 'vsjtwo.dart';

void main() {
  runApp(VSJApp());
}

class VSJApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VsjOne(),
      //initialRoute: '/',
      routes: {
        //  '/': (context) => VsjOne(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => VsjTwo(),
      },
    );
  }
}
