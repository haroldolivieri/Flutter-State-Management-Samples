import 'package:flutter/material.dart';

class CardCounter extends StatelessWidget {
  final counter;

  const CardCounter({Key key, this.counter}) : super(key: key);
  
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
              Text('Number of taps'),
              Text(counter.toString(), style: Theme.of(context).textTheme.display1),
            ],
          ),
        ),
      )),
    );
  }
}
