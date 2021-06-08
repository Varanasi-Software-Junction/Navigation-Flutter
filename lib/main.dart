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
      title: 'VSJ Navigation Demo',

      home: VsjOne(),
    );
  }
}
