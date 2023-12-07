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

  final String _TodoValue1 = '';
  final String _TodoValue2 = '';
  final String _TodoValue3 = '';
  final String _TodoValue4 = '';
  final String _TodoValue5 = '';
  final String _TodoValue6 = '';
  final String _TodoValue7 = '';
  final String _TodoValue8 = '';
  final String _TodoValue9 = '';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: screenSize.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: screenSize.height * 0.03,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
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
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
