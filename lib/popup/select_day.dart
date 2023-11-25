import 'package:flutter/material.dart';

class Button_day extends StatelessWidget {
  final String day;
  const Button_day({
    super.key,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.03,
      width: screenSize.height * 0.03,
      margin: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
      //휴일 선택 버튼 내부
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop(); //on off 기능구현
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: const Color(0xffc4c4c4),
        ),
        child: Transform.translate(
          offset: Offset(0, -screenSize.height * 0.001),
          child: Text(
            day,
            style: TextStyle(
              color: const Color(0xff535353),
              fontSize: screenSize.height * 0.02, // 폰트 크기 조절
              fontFamily: "JetBrain",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
