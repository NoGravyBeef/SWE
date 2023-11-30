import 'package:calendar/popup/change_background_color.dart';
import 'package:calendar/popup/change_ddays_color.dart';
import 'package:calendar/popup/change_font_color.dart';
import 'package:calendar/popup/change_font_size.dart';
import 'package:calendar/widgets/test_record2.dart';
import 'package:flutter/material.dart';
import 'package:calendar/widgets/dday_checkbox.dart';
import 'package:calendar/widgets/memo_headline.dart';
import 'package:calendar/widgets/memo_text.dart';
import 'package:calendar/screens/todolist_page.dart';

class Memo_Page extends StatefulWidget {
  Memo_Page({super.key, DateTime? date});
  final List<bool> _isUnderlinedList = List.generate(9, (index) => false);

  @override
  State<Memo_Page> createState() => MemoPage();
}

class MemoPage extends State<Memo_Page> {
  final TextEditingController _headlineController = TextEditingController();

  final TextEditingController _memoController1 = TextEditingController();
  final TextEditingController _memoController2 = TextEditingController();
  final TextEditingController _memoController3 = TextEditingController();
  final TextEditingController _memoController4 = TextEditingController();
  final TextEditingController _memoController5 = TextEditingController();
  final TextEditingController _memoController6 = TextEditingController();
  final TextEditingController _memoController7 = TextEditingController();
  final TextEditingController _memoController8 = TextEditingController();
  final TextEditingController _memoController9 = TextEditingController();

  bool _isMemoChecked1 = false;
  bool _isMemoChecked2 = false;
  bool _isMemoChecked3 = false;
  bool _isMemoChecked4 = false;
  bool _isMemoChecked5 = false;
  bool _isMemoChecked6 = false;
  bool _isMemoChecked7 = false;
  bool _isMemoChecked8 = false;
  bool _isMemoChecked9 = false;

  final String _headlineValue = '';

  final String _memoValue1 = '';
  final String _memoValue2 = '';
  final String _memoValue3 = '';
  final String _memoValue4 = '';
  final String _memoValue5 = '';
  final String _memoValue6 = '';
  final String _memoValue7 = '';
  final String _memoValue8 = '';
  final String _memoValue9 = '';

  final bool _showError1 = false;
  final int _memoValueMax = 20;

  bool _isUnderlined1 = false; //글자 밑줄
  bool _isUnderlined2 = false;
  bool _isUnderlined3 = false;
  bool _isUnderlined4 = false;
  bool _isUnderlined5 = false;
  bool _isUnderlined6 = false;
  bool _isUnderlined7 = false;
  bool _isUnderlined8 = false;
  bool _isUnderlined9 = false;

  late String _selectTime;

  bool isUnderlineOn = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF3D9),
      //메모장 자체 배경색상 변경-값 넘기기
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: screenSize.height * 0.04), //헤드라인 위패딩
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const test_record2(),
                IconButton(
                  icon: Icon(Icons.format_list_bulleted_outlined,
                      size: 22, color: Colors.grey.shade400), //녹음 옆
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Todolist_page()),
                    );
                  },
                ),
                Expanded(child: Container()),
                IconButton(
                  //메모장 나가기(저장)
                  icon: Icon(Icons.sensor_door_outlined,
                      size: 22, color: Colors.grey.shade400),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            //메모장 헤드라인
            HeadlineInputWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.format_list_bulleted_outlined,
                      size: 22, color: Colors.grey.shade400), //타이머
                  onPressed: () {},
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: Icon(Icons.notifications_none,
                      size: 22, color: Colors.grey.shade400), //알람메모
                  onPressed: () {
                    Future<TimeOfDay?> selectedTime = showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );

                    selectedTime.then((timeOfDay) {
                      setState(() {
                        _selectTime = '${timeOfDay!.hour}:${timeOfDay.minute}';
                      });
                    });
                  },
                ),
              ],
            ),
            SizedBox(width: screenSize.width * 0.01),
            //1. 메모 본문 & D-day
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController1,
                      isUnderlined: _isUnderlined1), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked1,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked1 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01, // 간격을 화면 너비의 10%로 설정
            ),
            Padding(
              //2. 메모 본문 & D-day
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController2,
                      isUnderlined: _isUnderlined2), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked2,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked2 = value;
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(
              height: screenSize.height * 0.01, // 간격을 화면 너비의 10%로 설정
            ),
            Padding(
              //3. 메모 본문 & D-day
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController3,
                      isUnderlined: _isUnderlined3), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked3,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked3 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),
            Padding(
              //4. 메모 본문 & D-day
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController4,
                      isUnderlined: _isUnderlined4), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked4,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked4 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01, // 간격을 화면 너비의 10%로 설정
            ),
            Padding(
              //5. 메모 본문 & D-day
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController5,
                      isUnderlined: _isUnderlined5), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked5,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked5 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01, // 간격을 화면 너비의 10%로 설정
            ),
            Padding(
              //6. 메모 본문 & D-day
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController6,
                      isUnderlined: _isUnderlined6), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked6,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked6 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01, // 간격을 화면 너비의 10%로 설정
            ),
            Padding(
              //7. 메모 본문 & D-day
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController7,
                      isUnderlined: _isUnderlined7), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked7,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked7 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01, // 간격을 화면 너비의 10%로 설정
            ),
            Padding(
              //8. 메모 본문 & D-day
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController8,
                      isUnderlined: _isUnderlined8), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked8,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked8 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Padding(
              //9. 메모 본문 & D-day
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(
                      memoController: _memoController9,
                      isUnderlined: _isUnderlined9), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day change_ddays_color
                    initialValue: _isMemoChecked9,
                    onChanged: (value) {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_ddays_color(),
                            );
                          });
                      setState(() {
                        _isMemoChecked9 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(width: 10),
                Container(
                  child: IconButton(
                    //글자크기 change_font_size
                    icon: Icon(Icons.text_fields,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_font_size(),
                            );
                          });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.text_format_outlined,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {
                      setState(() {
                        _isUnderlined1 = !_isUnderlined1;
                        _isUnderlined2 = !_isUnderlined2;
                        _isUnderlined3 = !_isUnderlined3;
                        _isUnderlined4 = !_isUnderlined4;
                        _isUnderlined5 = !_isUnderlined5;
                        _isUnderlined6 = !_isUnderlined6;
                        _isUnderlined7 = !_isUnderlined7;
                        _isUnderlined8 = !_isUnderlined8;
                        _isUnderlined9 = !_isUnderlined9;
                        isUnderlineOn = !isUnderlineOn;
                      });
                      isUnderlineOn
                          ? ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('밑줄 켰음.')))
                          : ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('밑줄 껐음.')));
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    //change_font_color
                    //글자색
                    icon: Icon(Icons.color_lens,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_font_color(),
                            );
                          });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    //배경색
                    icon: Icon(Icons.format_color_fill_outlined,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {
                      showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              content: const change_background_color(),
                            );
                          });
                    },
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  child: IconButton(
                    //todolist로 이동하기
                    icon: Icon(Icons.format_list_bulleted_outlined,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Todolist_page()),
                      );
                    }, //ddddddd
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
