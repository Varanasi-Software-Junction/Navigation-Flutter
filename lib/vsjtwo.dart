import 'package:flutter/material.dart';
import 'utilities.dart';
class VsjTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("VSJ Two"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back to VSJ One'),
            ),
          ),   Hero(
            tag: 'logo',
            child: Center(
              child: Image(height: 200,  image:NetworkImage(Utilities.imagepath))
              ,
            ),
          )
        ],
      ),
    );
  }
}
