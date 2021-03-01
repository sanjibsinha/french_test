import 'package:flutter/widgets.dart';

class FirstModelClass extends ChangeNotifier {
  String value = 'First Model Class';
  FirstModelClass({this.value});
  void changeValue() {
    value = 'First Model Class value changed!';
    notifyListeners();
  }
}
