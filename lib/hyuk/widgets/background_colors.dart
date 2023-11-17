import 'package:flutter/material.dart';

class background_colors extends StatefulWidget {
  const background_colors({super.key});

  @override
  State<background_colors> createState() => _background_colorsState();
}

class _background_colorsState extends State<background_colors> {
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
                  shape: BoxShape.circle, color: Color(0x75FCDF93)),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0x75F4BCD5)),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0x75BEE7F9)),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0x75DCF6ED)),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffDDD7FF)),
            )
          ],
        ),
      ),
    );
  }
}
