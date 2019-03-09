import 'package:flutter/material.dart';
class RotationTransition1   extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return new RotationTransitionState();
  }
  
}

class RotationTransitionState extends State<RotationTransition1> with SingleTickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    return new RotationTransition(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.orange,
      ),
      turns: AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
        lowerBound: 0,
        upperBound: 0.1,
      )..forward(),
    );
  }
}