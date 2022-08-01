import 'package:flutter/cupertino.dart';

class HomeModelWidget extends ChangeNotifier {
  var _value = 0;
  getValue() => _value.toString();

  inc1() {
    notifyListeners();
    return (_value = _value + 1).toString();
  }

  dec1() {
    notifyListeners();
    return (_value = _value - 1).toString();
  }
}
