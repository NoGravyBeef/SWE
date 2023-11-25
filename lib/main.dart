import 'package:calendar/popup/holyday_setup.dart';
import 'package:calendar/screens/join_screen.dart';
import 'package:calendar/screens/user_search_screen.dart';
import 'package:calendar/screens/friend_request_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calendar());
}

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HolydaySet(),
    );
  }
}
//asdf