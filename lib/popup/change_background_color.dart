import 'package:calendar/provider/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class change_background_color extends StatefulWidget {
  const change_background_color({super.key});

  @override
  State<change_background_color> createState() =>
      _change_background_colorState();
}

class _change_background_colorState extends State<change_background_color> {
  late testProvider _provider;
  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<testProvider>(context, listen: false);
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
                  backgroundColor: const Color(0xffFDEFCC),
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {
                _provider.change_background_color(const Color(0xffFDEFCC));
              },
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffF9DFEB),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {
                _provider.change_background_color(const Color(0xffF9DFEB));
              },
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffE0F3FB),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {
                _provider.change_background_color(const Color(0xffE0F3FB));
              },
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffEEFAF6),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {
                _provider.change_background_color(const Color(0xffEEFAF6));
              },
              child: const Text('')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xffDDD7FF),
                  fixedSize: Size(
                      screenSize.width * 0.0726, screenSize.height * 0.0402)),
              onPressed: () {
                _provider.change_background_color(const Color(0xffDDD7FF));
              },
              child: const Text('')),
        ],
      ),
    );
  }
}
