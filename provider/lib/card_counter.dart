import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class CardCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<CounterNotifier>(context).counter;

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
              Text(_counter.toString(), style: Theme.of(context).textTheme.display1),
            ],
          ),
        ),
      )),
    );
  }
}
