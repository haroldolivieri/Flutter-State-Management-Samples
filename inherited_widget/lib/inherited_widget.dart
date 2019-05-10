import 'package:flutter/widgets.dart';

class MyInheritedWidget extends InheritedWidget {
  final int counter;

  MyInheritedWidget({this.counter, child: Widget}): super(child: child);

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  }

  static MyInheritedWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MyInheritedWidget);
  }
}
