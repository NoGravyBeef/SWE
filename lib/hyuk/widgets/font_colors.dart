import 'package:flutter/material.dart';

class font_colors extends StatefulWidget {
  const font_colors({super.key});

  @override
  State<font_colors> createState() => _font_colorsState();
}

class _font_colorsState extends State<font_colors> {
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
      ),
    );
  }
}
