import 'package:flutter/material.dart';

import 'circle_colorful.dart';

class CardRandomColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Inner stateless widget'),
              CircleColorful()
            ],
          ),
        ),
      )),
    );
  }
}
