import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Memomain extends StatefulWidget {
  late final TextEditingController memoController;
  @override
  Memomain({required this.memoController});

  _MemomainState createState() => _MemomainState();
}

class _MemomainState extends State<Memomain> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 5,
      child: IntrinsicHeight(
        child: Container(
          decoration: ShapeDecoration(
            color: Color(0xFFFFF3D9),
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
          child: TextFormField(
            inputFormatters: [LengthLimitingTextInputFormatter(20)],
            style: TextStyle(
              fontSize: 15, //메모 글자 크기 변경
              color: Colors.grey, //메모 글자 색 변경
            ),
            controller: widget.memoController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
              ),
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: 10,
                height: 0,
              ),
              errorMaxLines: 1,
              border: InputBorder.none,
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onSaved: (val) {},
            validator: (val) {
              if (val!.length >= 20) {
                return 'error';
              }
            },
          ),
        ),
      ),
    );
  }
}
