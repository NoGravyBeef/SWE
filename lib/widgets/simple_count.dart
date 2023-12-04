import 'dart:async';

import 'package:flutter/material.dart';

class simple_count extends StatefulWidget {
  const simple_count({super.key});

  @override
  State<simple_count> createState() => _simple_countState();
}

class _simple_countState extends State<simple_count> {
  int _seconds = 0;
  late Timer _timer;
  bool _isRunning = false;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_isRunning) {
        setState(() {
          _seconds++;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startStopTimer() {
    setState(() {
      _isRunning = !_isRunning;
    });
  }

  void _resetTimer() {
    setState(() {
      _seconds = 0;
      _isRunning = false;
    });
  }

  String _formattedTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * (100 / screenSize.width),
      height: screenSize.height * (86 / screenSize.height),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: screenSize.height * (3 / screenSize.height)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.query_builder,
                  size: screenSize.height * (35 / screenSize.height),
                  color: const Color(0xff808080),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.height * (5 / screenSize.height)),
                  child: Text(
                    _formattedTime(_seconds),
                    style: TextStyle(
                        fontSize: screenSize.height * (16 / screenSize.height),
                        letterSpacing: 0.4,
                        color: const Color(0xff808080)),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: _startStopTimer,
                icon: _isRunning
                    ? const Icon(Icons.pause)
                    : const Icon(Icons.play_arrow),
                iconSize: screenSize.height * (25 / screenSize.height),
                color: const Color(0xff808080),
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: _resetTimer,
                  icon: Icon(
                    Icons.stop,
                    size: screenSize.height * (25 / screenSize.height),
                    color: const Color(0xff808080),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
