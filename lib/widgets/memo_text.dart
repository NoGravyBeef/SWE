import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Memomain extends StatefulWidget {
  final TextEditingController memoController;
  bool isUnderlined;

  Memomain({required this.memoController, required this.isUnderlined});

  @override
  _MemomainState createState() => _MemomainState();
}

class _MemomainState extends State<Memomain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
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
                fontSize: 15,
                color: Colors.grey,
                decoration: widget.isUnderlined
                    ? TextDecoration.underline
                    : TextDecoration.none,
              ),
              controller: widget.memoController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                ),
                border: InputBorder.none,
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onSaved: (val) {},
              onChanged: (val) {
                if (val.length >= 20) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        title: const Text('Error'),
                        content: const Text('텍스트 길이는 20자를 초과할 수 없습니다.'),
                        actions: [
                          TextButton(
                            style:
                                TextButton.styleFrom(primary: Colors.redAccent),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
