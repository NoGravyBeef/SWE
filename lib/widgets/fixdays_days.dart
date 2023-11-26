import 'package:flutter/material.dart';

class fixdays_days extends StatefulWidget {
  const fixdays_days({Key? key, required this.days}) : super(key: key);
  final String days;

  @override
  State<fixdays_days> createState() => _fixdays_daysState();
}

class _fixdays_daysState extends State<fixdays_days> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.03,
      width: screenSize.height * 0.03,
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
            style: TextStyle(
                color: const Color(0xff535353),
                fontSize: screenSize.height * 0.02,
                fontFamily: 'Jet Brain',
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
