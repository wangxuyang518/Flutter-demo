import 'package:flutter/material.dart';
class ScaleTransition1   extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return new ScaleTransitionState();
  }
  
}

class ScaleTransitionState extends State<ScaleTransition1> with SingleTickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    return new ScaleTransition(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.orange,
      ),
      scale: AnimationController(
        duration: Duration(seconds: 3),
        vsync: this,
        lowerBound: 1,
        upperBound: 2,
      )..forward(),
    );
  }
  
}