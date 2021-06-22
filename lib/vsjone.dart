import 'package:flutter/material.dart';
import 'package:navigationdemo/utilities.dart';
import 'vsjtwo.dart';

class VsjOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('VSJ One'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Go to Two'),
              onPressed: () {
    Navigator.pushNamed(context, '/second');
    }
                ),

            ),
          Hero(
            tag: 'logo',
            child: Center(
              child: Image(height: 60,  image:NetworkImage(Utilities.imagepath))
        ,
            ),
          ),],
      ),
      );

  }
}
