import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// 메모장 화면을 위한 StatefulWidget 클래스
class NoteScreen extends StatefulWidget {
  // 이 화면에 전달되는 날짜
  final DateTime date;

  const NoteScreen({Key? key, required this.date}) : super(key: key);

  @override
  // 메모장 화면의 상태를 생성
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  // 메모 입력을 위한 텍스트 컨트롤러
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 앱바 제목에 날짜 표시
        title: Text('메모장 - ${DateFormat.yMd().format(widget.date)}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // 메모 입력 필드
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: '여기에 메모를 입력하세요...',
              ),
              maxLines: null, // 입력 필드의 높이가 내용에 따라 확장됨
            ),
            // 저장 버튼
            ElevatedButton(
              onPressed: () {
                // 저장 버튼 클릭시 수행될 로직
              },
              child: const Text('저장'),
            ),
          ],
        ),
      ),
    );
  }
}
