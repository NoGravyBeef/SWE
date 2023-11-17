import 'package:flutter/material.dart';

import 'package:calendar/hyuk/widgets/calendar_days.dart';

class select_fixdays extends StatefulWidget {
  const select_fixdays({super.key});

  @override
  State<select_fixdays> createState() => _select_fixdaysState();
}

class _select_fixdaysState extends State<select_fixdays> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
          ),
        ],
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 0, top: 20, bottom: 10),
            child: Row(
              children: [
                Text(
                  "요일 선택",
                  style: TextStyle(
                    color: Color(0xff535353),
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calendar_days(
                days: "월",
              ),
              calendar_days(
                days: "화",
              ),
              calendar_days(
                days: "수",
              ),
              calendar_days(
                days: "목",
              ),
              calendar_days(
                days: "금",
              ),
              calendar_days(
                days: "토",
              ),
              calendar_days(
                days: "일",
              ),
            ],
          )
        ],
      ),
    );
  }
}
