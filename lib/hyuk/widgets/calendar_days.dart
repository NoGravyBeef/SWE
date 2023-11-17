import 'package:flutter/material.dart';

class calendar_days extends StatefulWidget {
  const calendar_days({Key? key, required this.days}) : super(key: key);
  final String days;

  @override
  State<calendar_days> createState() => _calendar_daysState();
}

class _calendar_daysState extends State<calendar_days> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27,
      height: 26,
      decoration: BoxDecoration(
        color: const Color(0xffc4c4c4),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(
          widget.days,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xff535353),
            fontSize: 17.5,
          ),
        ),
      ),
    );
  }
}
