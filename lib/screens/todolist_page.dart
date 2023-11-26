import 'package:calendar/widgets/Dday_checkbox.dart';
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
            children: <Widget>[
              SizedBox(height: 50),
              Todolist_Title(),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Todomain(memoController: TodolistController1),
                    const SizedBox(width: 10),
                    DDayCheckbox(
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
                    DDayCheckbox(
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
                    DDayCheckbox(
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
                    DDayCheckbox(
                      initialValue: _isTodoChecked4,
                      onChanged: (value) {
                        setState(() {
                          _isTodoChecked4 = value;
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
                    Todomain(memoController: TodolistController5),
                    const SizedBox(width: 10),
                    DDayCheckbox(
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
                    DDayCheckbox(
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
                    DDayCheckbox(
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
                    DDayCheckbox(
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
                    DDayCheckbox(
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
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.01, // 간격을 화면 너비의 10%로 설정
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
