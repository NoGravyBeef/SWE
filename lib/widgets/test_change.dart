import 'package:calendor_project/popup/change_font_color.dart';
import 'package:flutter/material.dart';

class test_change extends StatefulWidget {
  test_change({
    super.key,
    this.change_color,
  });
  Color? change_color = Colors.white;
  @override
  State<test_change> createState() => _test_changeState();
}

class _test_changeState extends State<test_change> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      widget.change_color;
    });
    return SizedBox(
      width: 300,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('data'),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: widget.change_color),
          )
        ],
      ),
    );
  }
}
