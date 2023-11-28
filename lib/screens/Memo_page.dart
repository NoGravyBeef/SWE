import 'package:flutter/material.dart';
import 'package:calendar/widgets/dday_checkbox.dart';
import 'package:calendar/widgets/memo_headline.dart';
import 'package:calendar/widgets/memo_text.dart';
import 'package:calendar/screens/todolist_page.dart';

class Memo_Page extends StatefulWidget {
  const Memo_Page({super.key, DateTime? date});

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

  String _headlineValue = '';

  String _memoValue1 = '';
  String _memoValue2 = '';
  String _memoValue3 = '';
  String _memoValue4 = '';
  String _memoValue5 = '';
  String _memoValue6 = '';
  String _memoValue7 = '';
  String _memoValue8 = '';
  String _memoValue9 = '';

  final bool _showError1 = false;
  final int _memoValueMax = 20;
  bool _isUnderlined = false; //글자밑줄 체크

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF3D9),
      //메모장 자체 배경색상 변경-값 넘기기
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(width: screenSize.width * 0.015), //헤드라인 위패딩
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.format_list_bulleted_outlined,
                      size: 22, color: Colors.grey.shade400), //녹음
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.format_list_bulleted_outlined,
                      size: 22, color: Colors.grey.shade400), //녹음 옆
                  onPressed: () {},
                ),
                Expanded(child: Container()),
                IconButton(
                  //메모장 나가기(저장)
                  icon: Icon(Icons.sensor_door_outlined,
                      size: 22, color: Colors.grey.shade400),
                  onPressed: () {
                    setState(() {
                      _headlineValue = _headlineController.text;
                      _memoValue1 = _memoController1.text;
                      _memoValue2 = _memoController2.text;
                      _memoValue3 = _memoController3.text;
                      _memoValue4 = _memoController4.text;
                      _memoValue5 = _memoController5.text;
                      _memoValue6 = _memoController6.text;
                      _memoValue7 = _memoController7.text;
                      _memoValue8 = _memoController8.text;
                      _memoValue9 = _memoController9.text;
                    });
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
                  onPressed: () {},
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
                    isUnderlined: _isUnderlined,
                  ), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked1,
                    onChanged: (value) {
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
                      isUnderlined: _isUnderlined), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked2,
                    onChanged: (value) {
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
                      isUnderlined: _isUnderlined), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked3,
                    onChanged: (value) {
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
                      isUnderlined: _isUnderlined), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked4,
                    onChanged: (value) {
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
                      isUnderlined: _isUnderlined), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked5,
                    onChanged: (value) {
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
                      isUnderlined: _isUnderlined), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked6,
                    onChanged: (value) {
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
                      isUnderlined: _isUnderlined), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked7,
                    onChanged: (value) {
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
                      isUnderlined: _isUnderlined), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked8,
                    onChanged: (value) {
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
                      isUnderlined: _isUnderlined), //메모 본문
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    //D-day
                    initialValue: _isMemoChecked9,
                    onChanged: (value) {
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
                    //글자크기
                    icon: Icon(Icons.text_fields,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    //텍스트 밑줄
                    icon: Icon(Icons.text_format_outlined,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {
                      setState(() {
                        _isUnderlined = !_isUnderlined;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    //글자색
                    icon: Icon(Icons.color_lens,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    //배경색
                    icon: Icon(Icons.format_color_fill_outlined,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {},
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
                    },
                  ),
                ),
                const SizedBox(width: 10.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}
