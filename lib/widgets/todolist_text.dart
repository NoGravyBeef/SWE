import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Todomain extends StatefulWidget {
  late final TextEditingController memoController;
  @override
  Todomain({required this.memoController});

  _TodomainState createState() => _TodomainState();
}

class _TodomainState extends State<Todomain> {
  final TextEditingController TodoController = TextEditingController();
  bool TodoChecked = false;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 5,
      child: IntrinsicHeight(
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shadows: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 3),
                blurRadius: 1.0,
                spreadRadius: 2.0,
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
            ),
          ),
          child: TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(20)],
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            controller: widget.memoController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
