import 'package:flutter/material.dart';
import 'package:memo/screens/Memo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Memo_Page(),
    );
  }
}
