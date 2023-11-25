import 'package:calendor_project/widgets/test_change.dart';
import 'package:flutter/material.dart';

class change_font_color extends StatefulWidget {
  const change_font_color({
    super.key,
  });

  @override
  State<change_font_color> createState() => _change_font_colorState();
}

class _change_font_colorState extends State<change_font_color> {
  Color test_color = Colors.white;
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
                  backgroundColor: const Color(0xff767676),
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {
                setState(() {
                  test_color = const Color(0xff767676);
                });
              },
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffff8A8A),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xff8A8AFF),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xff8AFF92),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffe1e1e1),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {},
              child: const Text('')),
          test_change(
            change_color: test_color,
          )
        ],
      ),
    );
  }
}
