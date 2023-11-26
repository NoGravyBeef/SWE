import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Memomain extends StatefulWidget {
  late final TextEditingController memoController;
  @override
  Memomain({required this.memoController});

  _MemomainState createState() => _MemomainState();
}

//메모 본문 작성 하기
class _MemomainState extends State<Memomain> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 5,
      child: IntrinsicHeight(
        //메모 본문 박스 색상
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
          //글자 작성
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
                border: InputBorder.none,
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onSaved: (val) {},
              onChanged: (val) {
                // 이 함수는 텍스트가 변경될 때 호출됩니다.
                if (val.length >= 20) {
                  // 텍스트 길이가 20자를 초과하면 다이얼로그를 표시합니다.
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
                              Navigator.pop(context); // 다이얼로그를 닫습니다.
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              }),
        ),
      ),
    );
  }
}
