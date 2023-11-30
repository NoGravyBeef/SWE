import 'package:flutter/material.dart';

class testProvider extends ChangeNotifier {
  Color _backGroundColor = const Color(0xFFFFF3D9);
  Color get backGroundColor => _backGroundColor;

  void change_background_color(changeColor) {
    _backGroundColor = changeColor;
    notifyListeners();
  }
}
