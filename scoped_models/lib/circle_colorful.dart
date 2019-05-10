import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'counter.dart';

class CircleColorful extends StatelessWidget {
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
          child: ScopedModelDescendant<CounterModel>(
        builder: (context, _, model) => Text(
              model.counter.toString(),
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
      )),
    );
  }
}
