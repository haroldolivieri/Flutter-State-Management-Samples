import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'counter.dart';

class CardCounter extends StatelessWidget {
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
              ScopedModelDescendant<CounterModel>(
                  builder: (context, _, model) =>
                      Text(model.counter.toString(), style: Theme.of(context).textTheme.display1)),
            ],
          ),
        ),
      )),
    );
  }
}
