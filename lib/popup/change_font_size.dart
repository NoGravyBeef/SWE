import 'package:flutter/material.dart';

class change_font_size extends StatefulWidget {
  const change_font_size({super.key});

  @override
  State<change_font_size> createState() => _change_font_sizeState();
}

class _change_font_sizeState extends State<change_font_size> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.6867,
      height: screenSize.height * 0.11507,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  backgroundColor: const Color(0xffc4c4c4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  fixedSize: Size(
                      screenSize.width * 0.1344, screenSize.height * 0.06904)),
              onPressed: () {},
              child: Text(
                'T',
                style: TextStyle(
                    fontSize: screenSize.height * 0.0506,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  backgroundColor: const Color(0xffc4c4c4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  fixedSize: Size(
                      screenSize.width * 0.1344, screenSize.height * 0.06904)),
              onPressed: () {},
              child: Text(
                'T',
                style: TextStyle(
                    fontSize: screenSize.height * 0.0368,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  backgroundColor: const Color(0xffc4c4c4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  fixedSize: Size(
                      screenSize.width * 0.1344, screenSize.height * 0.06904)),
              onPressed: () {},
              child: Text(
                'T',
                style: TextStyle(
                    fontSize: screenSize.height * 0.02761,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  backgroundColor: const Color(0xffc4c4c4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  fixedSize: Size(
                      screenSize.width * 0.1344, screenSize.height * 0.06904)),
              onPressed: () {},
              child: Text(
                'T',
                style: TextStyle(
                    fontSize: screenSize.height * 0.020713,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )),
        ],
      ),
    );
  }
}
