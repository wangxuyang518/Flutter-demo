import 'package:flutter/material.dart';

class SlideTransition1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SlideTransition1State();
  }
}
class SlideTransition1State extends State<SlideTransition1>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var t = Tween<Offset>(
      begin: const Offset(0.0, 2.0),
      end: const Offset(0.0, 1.0),
    ).animate(AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..forward());

    return new SlideTransition(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.orange,
      ),
      position: t,
    );
  }
}
