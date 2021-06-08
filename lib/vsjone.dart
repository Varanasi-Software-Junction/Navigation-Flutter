import 'package:flutter/material.dart';
import 'vsjtwo.dart';

class VsjOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VSJ One'),
      ),
      body: Center(
        backgroundColor: Colors.teal,
        child: ElevatedButton(
          child: Text('Go to Two'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VsjTwo()),
            );
          },
        ),
      ),
    );
  }
}
