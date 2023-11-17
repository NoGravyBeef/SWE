import 'package:calendar/hyuk/widgets/setting_rows.dart';
import 'package:flutter/material.dart';

class SwitchTest extends StatefulWidget {
  const SwitchTest({super.key});

  @override
  State<SwitchTest> createState() => _SwitchTestState();
}

class _SwitchTestState extends State<SwitchTest> {
  final bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SettingRows(inputText: "알람"),
            SettingRows(inputText: "음력"),
            SettingRows(inputText: "절기"),
            SettingRows(inputText: "휴일"),
            SettingRows(inputText: "일정공개"),
            SettingRows(inputText: "친구신청"),
            SettingRows(inputText: "상단바"),
            SettingRows(inputText: "일정 고정"),
          ],
        ),
      ),
    );
  }
}
