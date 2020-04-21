
import 'dart:async';

class CountBLoc {
  int _count;
  var _countController = StreamController<int>.broadcast() ;

  CountBLoc() {
    _count = 0;
    _countController = StreamController<int>();
  }

  Stream<int> get stream => _countController.stream;
  int get value => _count;

  increment() {
    _countController.sink.add(++_count);
  }

  dispose() {
    _countController.close();
  }
}