import 'package:calendar/screens/memo_page.dart';
import 'package:calendar/widgets/todolist_checkbox.dart';
import 'package:calendar/widgets/todolist_text.dart';
import 'package:flutter/material.dart';
import '../widgets/todolist_title.dart';

class Todolist_page extends StatefulWidget {
  const Todolist_page({super.key});

  @override
  State<Todolist_page> createState() => Todolist();
}

class Todolist extends State<Todolist_page> {
  final TodolistController1 = TextEditingController();
  final TodolistController2 = TextEditingController();
  final TodolistController3 = TextEditingController();
  final TodolistController4 = TextEditingController();
  final TodolistController5 = TextEditingController();
  final TodolistController6 = TextEditingController();
  final TodolistController7 = TextEditingController();
  final TodolistController8 = TextEditingController();
  final TodolistController9 = TextEditingController();

  bool _isTodoChecked1 = false;
  bool _isTodoChecked2 = false;
  bool _isTodoChecked3 = false;
  bool _isTodoChecked4 = false;
  bool _isTodoChecked5 = false;
  bool _isTodoChecked6 = false;
  bool _isTodoChecked7 = false;
  bool _isTodoChecked8 = false;
  bool _isTodoChecked9 = false;

  String _TodoValue1 = '';
  String _TodoValue2 = '';
  String _TodoValue3 = '';
  String _TodoValue4 = '';
  String _TodoValue5 = '';
  String _TodoValue6 = '';
  String _TodoValue7 = '';
  String _TodoValue8 = '';
  String _TodoValue9 = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/whitepapertexture.jpeg'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.sensor_door_outlined,
                        size: 22, color: Colors.grey.shade400),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Memo_Page()),
                      );
                      setState(() {
                        _TodoValue1 = TodolistController1.text;
                        _TodoValue2 = TodolistController2.text;
                        _TodoValue3 = TodolistController3.text;
                        _TodoValue4 = TodolistController4.text;
                        _TodoValue5 = TodolistController5.text;
                        _TodoValue6 = TodolistController6.text;
                        _TodoValue7 = TodolistController7.text;
                        _TodoValue8 = TodolistController8.text;
                        _TodoValue9 = TodolistController9.text;
                      });
                    },
                  ),
                ],
              ),
              Todolist_Title(),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController1),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked1,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked1 = value;
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
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController2),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked2,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked2 = value;
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
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController3),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked3,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked3 = value;
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
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController4),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked4,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked4 = value;
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
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController5),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked5,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked5 = value;
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
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController6),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked6,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked6 = value;
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
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController7),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked7,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked7 = value;
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
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController8),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked8,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked8 = value;
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
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController9),
                    const SizedBox(width: 10),
                    TodoCheckbox(
                      initialValue: _isTodoChecked9,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked9 = value;
                        });
                      },
                    ),
                  ], // Container()
                ),
              ),
              const SizedBox(height: 22.0),
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
