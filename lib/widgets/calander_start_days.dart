import 'package:flutter/material.dart';

class calander_start_days extends StatefulWidget {
  const calander_start_days({Key? key, required this.days}) : super(key: key);
  final String days;

  @override
  State<calander_start_days> createState() => _calander_daysState();
}

class _calander_daysState extends State<calander_start_days> {
  @override
  Widget build(BuildContext context) {
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
          onPressed: () {},
          child: Text(
            widget.days,
            style: const TextStyle(color: Color(0xff535353), fontSize: 18),
          )),
    );
  }
}
