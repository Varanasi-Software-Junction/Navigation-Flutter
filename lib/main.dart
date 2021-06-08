import 'package:flutter/material.dart';
import 'vsjone.dart';
import 'vsjtwo.dart';

void main() {
   MaterialApp(

    initialRoute: '/',
    routes: {
        '/': (context) => VsjOne(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => VsjTwo(),
    },
  );
}

