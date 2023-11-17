import 'package:flutter/material.dart';

class calendar_recode extends StatefulWidget {
  const calendar_recode({super.key});

  @override
  State<calendar_recode> createState() => _calendar_recodeState();
}

class _calendar_recodeState extends State<calendar_recode> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 40,
      child: Row(
        children: [
          const Icon(
            Icons.mic_none,
            size: 32,
            color: Color(0xff808080),
          ),
          Container(
            width: 200,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0, 5),
                  ),
                ]),
            child: const Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
