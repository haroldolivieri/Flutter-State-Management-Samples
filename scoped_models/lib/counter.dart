import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}
