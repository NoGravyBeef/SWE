import 'package:flutter/material.dart';
//import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
//as Custom;

class SettingRows extends StatefulWidget {
  const SettingRows({Key? key, required this.inputText}) : super(key: key);
  final String inputText;

  @override
  State<SettingRows> createState() => _SettingRowsState();
}

class _SettingRowsState extends State<SettingRows> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: Colors.white,
        boxShadow: const [
          //Custom.BoxShadow(
          //  color: Colors.grey,
          //  blurRadius: 3,
          //  //spreadRadius: -10.0,
          //  offset: Offset(2, 7),
          //  inset: true,
          //),
          // Custom.BoxShadow(
          //   color: Colors.grey,
          //   blurRadius: 1,
          //   //spreadRadius: -10.0,
          //   offset: Offset(-2, 2),
          //   inset: true,
          // ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.inputText,
            style: const TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
          Switch(
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
