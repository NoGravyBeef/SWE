import 'package:flutter/material.dart';

class DDayCheckbox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  DDayCheckbox({required this.initialValue, required this.onChanged});

  @override
  _DDayCheckboxState createState() => _DDayCheckboxState();
}

class _DDayCheckboxState extends State<DDayCheckbox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            shadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, 3),
                blurRadius: 1.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Transform.scale(
            scale: 1.7,
            child: Checkbox(
              activeColor: Colors.white.withOpacity(0.9),
              checkColor: Colors.grey,
              fillColor: MaterialStateProperty.all(
                Colors.white.withOpacity(0.9),
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              side: BorderSide(
                color: Colors.white.withOpacity(0.9),
              ),
              splashRadius: 12.0,
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                  widget.onChanged(value);
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
