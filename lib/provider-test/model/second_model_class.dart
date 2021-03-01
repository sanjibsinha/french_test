import 'package:flutter/widgets.dart';
import 'package:french_test/provider-test/model/first_model_class.dart';

class SecondModelClass extends ChangeNotifier {
  FirstModelClass firstModelClass;
  SecondModelClass({this.firstModelClass});
  void changeValue() {
    firstModelClass.value = 'Second Model Class value changed!';
    notifyListeners();
  }
}
