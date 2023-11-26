import 'package:flutter/material.dart';

class FixedSchedule_row extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const FixedSchedule_row(
      {super.key,
      this.text = 'dd ',
      this.bgColor = Colors.white70,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.023,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: screenSize.height * 0.008,
                  horizontal: screenSize.width * 0.41,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
