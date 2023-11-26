import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HeadlineInputWidget extends StatefulWidget {
  @override
  _HeadlineInputWidgetState createState() => _HeadlineInputWidgetState();
}

class _HeadlineInputWidgetState extends State<HeadlineInputWidget> {
  TextEditingController _headlineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            inputFormatters: [LengthLimitingTextInputFormatter(15)],
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey,
            ),
            controller: _headlineController,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "헤드라인을 입력하세요.",
              hintStyle: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade400,
                fontFamily: 'NanumGothic',
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _headlineController.dispose();
    super.dispose();
  }
}