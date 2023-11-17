import 'package:flutter/material.dart';

class JoinTextField extends StatelessWidget {
  final String labelText, hintText;

  const JoinTextField({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ), // 내부 패딩 조절
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12, // 폰트 크기 조절
          fontFamily: 'JetBrain',
          fontWeight: FontWeight.w300,
          letterSpacing: 2,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1, // 테두리 두께 조절
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          borderSide: BorderSide(
            width: 1,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
