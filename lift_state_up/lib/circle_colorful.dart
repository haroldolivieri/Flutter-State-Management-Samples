import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleColorful extends StatelessWidget {
  final counter;

  const CircleColorful({Key key, this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0),
      ),
      child: Center(
          child: Text(
        counter.toString(),
        style: TextStyle(color: Colors.white, fontSize: 25),
      )),
    );
  }
}
