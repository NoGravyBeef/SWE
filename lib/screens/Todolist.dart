import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/Todolist_title.dart';

class Todolist_page extends StatefulWidget {
  const Todolist_page({super.key});

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

  bool? _isTodoChecked1 = false;
  bool? _isTodoChecked2 = false;
  bool? _isTodoChecked3 = false;
  bool? _isTodoChecked4 = false;
  bool? _isTodoChecked5 = false;
  bool? _isTodoChecked6 = false;
  bool? _isTodoChecked7 = false;
  bool? _isTodoChecked8 = false;
  bool? _isTodoChecked9 = false;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
              Column(
                //1
                children: <Widget>[
                  Row(children: <Widget>[
                    SizedBox(width: 40),
                    Container(
                      //메모장 본문
                      width: 280,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200, //메모 본문 색상변경
                        borderRadius: BorderRadius.circular(80.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 3),
                            blurRadius: 1.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: TextField(
                        inputFormatters: [LengthLimitingTextInputFormatter(15)],
                        style: TextStyle(
                          fontSize: 15, //메모장 본문 텍스트 크기 변경
                          color: Colors.grey, //메모장 본문 글자색 변경
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(13.0),
                          border: InputBorder.none,
                        ),
                        controller: TodolistController1,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      //디데이
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 3),
                            blurRadius: 1.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Transform.scale(
                        scale: 1.7,
                        child: Checkbox(
                            activeColor: Colors.white.withOpacity(0.9),
                            checkColor: Colors.grey,
                            fillColor: MaterialStatePropertyAll(
                                Colors.white.withOpacity(0.9)),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            side: BorderSide(
                                color: Colors.white.withOpacity(0.9)),
                            value: _isTodoChecked1,
                            onChanged: (value) {
                              setState(() {
                                _isTodoChecked1 = value;
                              });
                            }),
                      ),
                    ),
                  ] // Container()
                      ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                //2
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Container(
                        //메모장 본문
                        width: 280,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200, //메모 본문 색상변경
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          style: TextStyle(
                            fontSize: 15, //메모장 본문 텍스트 크기 변경
                            color: Colors.grey, //메모장 본문 글자색 변경
                          ),
                          controller: TodolistController2,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(13.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        //디데이
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                              activeColor: Colors.white.withOpacity(0.9),
                              checkColor: Colors.grey,
                              fillColor: MaterialStatePropertyAll(
                                  Colors.white.withOpacity(0.9)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.9)),
                              value: _isTodoChecked2,
                              onChanged: (value) {
                                setState(() {
                                  _isTodoChecked2 = value;
                                });
                              }),
                        ),
                      ),
                    ], // Container()
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                //3
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Container(
                        //메모장 본문
                        width: 280,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200, //메모 본문 색상변경
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          style: TextStyle(
                            fontSize: 15, //메모장 본문 텍스트 크기 변경
                            color: Colors.grey, //메모장 본문 글자색 변경
                          ),
                          controller: TodolistController3,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(13.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        //디데이
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                              activeColor: Colors.white.withOpacity(0.9),
                              checkColor: Colors.grey,
                              fillColor: MaterialStatePropertyAll(
                                  Colors.white.withOpacity(0.9)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.9)),
                              value: _isTodoChecked3,
                              onChanged: (value) {
                                setState(() {
                                  _isTodoChecked3 = value;
                                });
                              }),
                        ),
                      ),
                    ], // Container()
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                //4
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Container(
                        //메모장 본문
                        width: 280,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200, //메모 본문 색상변경
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          style: TextStyle(
                            fontSize: 15, //메모장 본문 텍스트 크기 변경
                            color: Colors.grey, //메모장 본문 글자색 변경
                          ),
                          controller: TodolistController4,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(13.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        //디데이
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                              activeColor: Colors.white.withOpacity(0.9),
                              checkColor: Colors.grey,
                              fillColor: MaterialStatePropertyAll(
                                  Colors.white.withOpacity(0.9)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.9)),
                              value: _isTodoChecked4,
                              onChanged: (value) {
                                setState(() {
                                  _isTodoChecked4 = value;
                                });
                              }),
                        ),
                      ),
                    ], // Container()
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                //5
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Container(
                        //메모장 본문
                        width: 280,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200, //메모 본문 색상변경
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          style: TextStyle(
                            fontSize: 15, //메모장 본문 텍스트 크기 변경
                            color: Colors.grey, //메모장 본문 글자색 변경
                          ),
                          controller: TodolistController5,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(13.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        //디데이
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                              activeColor: Colors.white.withOpacity(0.9),
                              checkColor: Colors.grey,
                              fillColor: MaterialStatePropertyAll(
                                  Colors.white.withOpacity(0.9)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.9)),
                              value: _isTodoChecked5,
                              onChanged: (value) {
                                setState(() {
                                  _isTodoChecked5 = value;
                                });
                              }),
                        ),
                      ),
                    ], // Container()
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                //6
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Container(
                        //메모장 본문
                        width: 280,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200, //메모 본문 색상변경
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          style: TextStyle(
                            fontSize: 15, //메모장 본문 텍스트 크기 변경
                            color: Colors.grey, //메모장 본문 글자색 변경
                          ),
                          controller: TodolistController6,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(13.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        //디데이
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                              activeColor: Colors.white.withOpacity(0.9),
                              checkColor: Colors.grey,
                              fillColor: MaterialStatePropertyAll(
                                  Colors.white.withOpacity(0.9)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.9)),
                              value: _isTodoChecked6,
                              onChanged: (value) {
                                setState(() {
                                  _isTodoChecked6 = value;
                                });
                              }),
                        ),
                      ),
                    ], // Container()
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                //7
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Container(
                        //메모장 본문
                        width: 280,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200, //메모 본문 색상변경
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          style: TextStyle(
                            fontSize: 15, //메모장 본문 텍스트 크기 변경
                            color: Colors.grey, //메모장 본문 글자색 변경
                          ),
                          controller: TodolistController7,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(13.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        //디데이
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                              activeColor: Colors.white.withOpacity(0.9),
                              checkColor: Colors.grey,
                              fillColor: MaterialStatePropertyAll(
                                  Colors.white.withOpacity(0.9)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.9)),
                              value: _isTodoChecked7,
                              onChanged: (value) {
                                setState(() {
                                  _isTodoChecked7 = value;
                                });
                              }),
                        ),
                      ),
                    ], // Container()
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                //8
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Container(
                        //메모장 본문
                        width: 280,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200, //메모 본문 색상변경
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          style: TextStyle(
                            fontSize: 15, //메모장 본문 텍스트 크기 변경
                            color: Colors.grey, //메모장 본문 글자색 변경
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(13.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        //디데이
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                              activeColor: Colors.white.withOpacity(0.9),
                              checkColor: Colors.grey,
                              fillColor: MaterialStatePropertyAll(
                                  Colors.white.withOpacity(0.9)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.9)),
                              value: _isTodoChecked8,
                              onChanged: (value) {
                                setState(() {
                                  _isTodoChecked8 = value;
                                });
                              }),
                        ),
                      ),
                    ], // Container()
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                //9
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40),
                      Container(
                        //메모장 본문
                        width: 280,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200, //메모 본문 색상변경
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15)
                          ],
                          style: TextStyle(
                            fontSize: 15, //메모장 본문 텍스트 크기 변경
                            color: Colors.grey, //메모장 본문 글자색 변경
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(13.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        //디데이
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 3),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                              activeColor: Colors.white.withOpacity(0.9),
                              checkColor: Colors.grey,
                              fillColor: MaterialStatePropertyAll(
                                  Colors.white.withOpacity(0.9)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.9)),
                              value: _isTodoChecked9,
                              onChanged: (value9) {
                                setState(() {
                                  _isTodoChecked9 = value9;
                                });
                              }),
                        ),
                      ),
                    ], // Container()
                  ),
                ],
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
