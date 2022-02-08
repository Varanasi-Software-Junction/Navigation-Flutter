import 'package:flutter/material.dart';
import 'utilities.dart';

class VsjThree extends StatefulWidget {
  _VsjThree createState() {
    return _VsjThree();
  }
}

class _VsjThree extends State<VsjThree> with SingleTickerProviderStateMixin {
  Animation animation;
  String data = "";
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("VSJ three"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back to VSJ two'),
            ),
          ),
          Hero(
            tag: 'logo',
            child: Center(
              child:
              Image(height: 200, image: NetworkImage(Utilities.imagepath)),
            ),
          ),
          Text(data),
          Image(
            image: NetworkImage(Utilities.imagepath),
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {
              animation = ColorTween(begin: Colors.blue, end: Colors.red)
                  .animate(controller);
              controller.reset();
              controller.forward();
              setState(() {});
            },
            child: Text(
              "Animate",
              style: TextStyle(backgroundColor: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
