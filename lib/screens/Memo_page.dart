import 'package:flutter/material.dart';
import 'package:calendar/widgets/Dday_checkbox.dart';
import 'package:calendar/widgets/Headline.dart';
import 'package:calendar/widgets/Memomain.dart';
import 'package:calendar/screens/Todolist.dart';

class Memo_Page extends StatefulWidget {
  const Memo_Page({super.key});

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
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.015), //헤드라인 위 패딩
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.format_list_bulleted_outlined,
                      size: MediaQuery.of(context).size.width * 0.03,
                      color: Colors.grey.shade400), //녹음 등등
                  onPressed: () {},
                ),
                Expanded(child: Container()),
                //메모장 나가기(저장)
                IconButton(
                  icon: Icon(Icons.sensor_door_outlined,
                      size: MediaQuery.of(context).size.width * 0.03,
                      color: Colors.grey.shade400),
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
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.format_list_bulleted_outlined,
                      size: MediaQuery.of(context).size.width * 0.03,
                      color: Colors.grey.shade400), //타이머 등등
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Padding(
              //1
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController1),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked1,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked1 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),

            Padding(
              //2
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController2),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked2,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked2 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),
            //3
            Padding(
              //3
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController3),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked3,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked3 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),
            //4
            Padding(
              //2
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController4),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked4,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked4 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),
            //5
            Padding(
              //2
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController5),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked5,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked5 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),
            //6
            Padding(
              //2
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController6),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked6,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked6 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),
            //7
            Padding(
              //2
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController7),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked7,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked7 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),
            //8
            Padding(
              //2
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController8),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked8,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked8 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01, // 간격을 화면 너비의 10%로 설정
            ),
            //9
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Memomain(memoController: _memoController9),
                  const SizedBox(width: 10),
                  DDayCheckbox(
                    initialValue: _isMemoChecked9,
                    onChanged: (value) {
                      setState(() {
                        _isMemoChecked9 = value;
                      });
                    },
                  ),
                ], // Container()
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(width: 10),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.text_fields,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.text_format_outlined,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.color_lens,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.format_color_fill_outlined,
                        size: 24.0, color: Colors.grey.shade400),
                    onPressed: () {},
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  child: IconButton(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
