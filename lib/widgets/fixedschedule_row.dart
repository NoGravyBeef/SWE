import 'package:flutter/material.dart';

class FixedSchedule_row extends StatefulWidget {
  final Color bgColor;
  final Color textColor;

  const FixedSchedule_row(
      {super.key,
      this.bgColor = Colors.white70,
      this.textColor = Colors.black});

  @override
  State<FixedSchedule_row> createState() => _FixedSchedule_rowState();
}

class _FixedSchedule_rowState extends State<FixedSchedule_row> {
  String fixedScheduleValue = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.023,
        ),
        Container(
            height: 30,
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(45),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: TextFormField(
                maxLength: 20,
                onChanged: (value) {
                  setState(() {
                    fixedScheduleValue = value;
                  });
                },
                decoration: const InputDecoration(
                  /*contentPadding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.04,
            ),*/
                  border: InputBorder.none,
                  counterText: "",
                ),
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center)),
      ],
    );
  }
}
