import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class testProvider extends ChangeNotifier {
  Color _backGroundColor = const Color(0xFFFFF3D9);
  Color get backGroundColor => _backGroundColor;

  Color _holidayColor = Colors.black;
  Color get holidayColor => _holidayColor;

  int _changeStartDay = 0;
  int get changeStartDay => _changeStartDay;

  List<bool> selectHoliday = [false, false, false, false, false, false, false];

  Color _holidayBackgroundColor = Colors.purple.withOpacity(0.5);
  Color get holidayBackgroundColor => _holidayBackgroundColor;

  bool changeStatus = true;

  void change_background_color(changeColor) {
    _backGroundColor = changeColor;
    notifyListeners();
  }

  void change_holiday_color(changeHolidayColor) {
    _holidayColor = changeHolidayColor;
    notifyListeners();
  }

  void change_holiday_background_color(changeHolidayColor) {
    _holidayBackgroundColor = changeHolidayColor;
    notifyListeners();
  }

  void change_start(dayIndex) {
    _changeStartDay = dayIndex;
    notifyListeners();
  }
}
