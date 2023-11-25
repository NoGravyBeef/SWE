import 'package:flutter/material.dart';

class change_ddays_color extends StatefulWidget {
  const change_ddays_color({super.key});

  @override
  State<change_ddays_color> createState() => _change_ddays_colorState();
}

class _change_ddays_colorState extends State<change_ddays_color> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.686,
      height: screenSize.height * 0.062,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(0, 5))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFF3333),
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffc4c4c4),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffef73e7),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xff73c5a8),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xff337db2),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
        ],
      ),
    );
  }
}
