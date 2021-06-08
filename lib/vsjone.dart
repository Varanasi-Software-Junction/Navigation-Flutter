import 'package:flutter/material.dart';
import 'vsjtwo.dart';

class VsjOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('VSJ One'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Two'),
          onPressed: () {
    Navigator.pushNamed(context, '/second');
    }
            ),

        ),
      );

  }
}
