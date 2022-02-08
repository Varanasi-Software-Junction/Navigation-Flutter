import 'package:flutter/material.dart';
import 'vsjone.dart';
import 'vsjtwo.dart';
import 'vsjthree.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => VsjOne(),
      '/second': (context) => VsjTwo(),
      '/three': (context) => VsjThree(),
    },
  ));
}




