import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todolist_Title extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container( //메모장 헤드라인
      child: Text(
        "To - Do List",
        style: TextStyle(
          fontFamily: 'Ubuntu-Italic',
          fontSize: 40, //헤드라인 글자크기 변경
          color: Colors.black, //헤드라인 글자색 변경
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

}