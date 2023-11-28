import 'package:calendar/widgets/fixdays_days.dart';
import 'package:flutter/material.dart';

class fixdays extends StatefulWidget {
  const fixdays({super.key});

  @override
  State<fixdays> createState() => _fixdaysState();
}

class _fixdaysState extends State<fixdays> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.5722,
      height: screenSize.height * 0.13,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17),
            child: Text(
              '요일 선택',
              style: TextStyle(fontSize: 17, color: Color(0xff535353)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              fixdays_days(days: '월'),
              fixdays_days(days: '화'),
              fixdays_days(days: '수'),
              fixdays_days(days: '목'),
              fixdays_days(days: '금'),
              fixdays_days(days: '토'),
              fixdays_days(days: '일'),
            ],
          )
        ],
      ),
    );
  }
}
