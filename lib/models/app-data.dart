import 'package:flutter/material.dart';


class AppData with ChangeNotifier {
  String _name = 'John rambo';

  void changeData(String data) {
    _name = data;
    notifyListeners();
  }

  // when the declared variable is private,
  // use a getter to get the same name
  // like it has been impelemented below
  String get name => _name;
}


// this go back to widget tree, and use a changenotifier