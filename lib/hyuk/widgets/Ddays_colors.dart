import 'package:flutter/material.dart';

class Ddays_colors extends StatefulWidget {
  const Ddays_colors({super.key});

  @override
  State<Ddays_colors> createState() => _Ddays_colorsState();
}

class _Ddays_colorsState extends State<Ddays_colors> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.only(top: 3, bottom: 0, left: 0, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xCCff0000)),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffC4C4C4)),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffEF73E7)),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff73C5A8)),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff337DB2)),
            )
          ],
        ),
      ),
    );
  }
}
