import 'package:calendar/hyuk/widgets/calendar_days.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingColor extends StatefulWidget {
  const SettingColor({super.key});

  @override
  State<SettingColor> createState() => _SettingColorState();
}

class _SettingColorState extends State<SettingColor> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 210,
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
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "휴일 설정",
                  style: TextStyle(
                    color: Color(0xff535353),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "휴일 선택 활성화",
                  style: TextStyle(
                    color: Color(0xff535353),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const calendar_days(
                days: "월",
              ),
              const calendar_days(
                days: "화",
              ),
              const calendar_days(
                days: "수",
              ),
              const calendar_days(
                days: "목",
              ),
              const calendar_days(
                days: "금",
              ),
              const calendar_days(
                days: "토",
              ),
              const calendar_days(
                days: "일",
              ),
              SizedBox(
                width: 90,
                height: 29,
                child: CupertinoSwitch(
                  value: _isChecked,
                  activeColor: CupertinoColors.activeBlue,
                  thumbColor: Colors.white,
                  trackColor: Colors.grey,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "휴일 색상 선택",
                  style: TextStyle(
                    color: Color(0xff535353),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 340,
            height: 52,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x75000000)),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x75ff0000)),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x750000ff)),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x7500ff12)),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffe1e1e1)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
