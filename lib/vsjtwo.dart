import 'package:flutter/material.dart';
import 'utilities.dart';
class VsjTwo extends StatefulWidget {
  _VsjTwo createState() {
    return _VsjTwo();
  }

}
class _VsjTwo extends State<VsjTwo> with SingleTickerProviderStateMixin
{
  Animation animation;
  String data="";
  AnimationController controller;
  @override
  void initState()
  {
    super.initState();
controller=AnimationController(vsync: this,
duration: Duration(seconds: 10),
);


controller.forward();
controller.addListener(() {
  print(controller.value);
  data=controller.value.toInt().toString();
  setState(() {

  });
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
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
          ),
          Text(data),
          Image(image: NetworkImage(Utilities.imagepath),height:200,),
          RaisedButton(onPressed: () {
            animation=ColorTween(begin: Colors.blue,end:Colors.red).animate(controller);
            controller.reset();
            controller.forward();
            setState(() {

            });
          },child: Text("Animate",style: TextStyle(backgroundColor: Colors.red),),)
        ],
      ),
    );
  }
}
