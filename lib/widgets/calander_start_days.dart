import 'package:calendar/provider/test_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class calander_start_days extends StatefulWidget {
  const calander_start_days(
      {super.key, required this.days, required this.onPressed});
  final String days;
  final VoidCallback onPressed;

  @override
  State<calander_start_days> createState() => _calander_daysState();
}

class _calander_daysState extends State<calander_start_days> {
  late testProvider _provider;
  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<testProvider>(context, listen: false);
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.05,
      height: screenSize.height * 0.0325,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              backgroundColor: const Color(0xffc4c4c4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: widget.onPressed,
          child: Text(
            widget.days,
            style: const TextStyle(color: Color(0xff535353), fontSize: 18),
          )),
    );
  }
}
