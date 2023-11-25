import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteScreen extends StatefulWidget {
  final DateTime date;

  const NoteScreen({Key? key, required this.date}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메모장 - ${DateFormat.yMd().format(widget.date)}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: '여기에 메모를 입력하세요...',
              ),
              maxLines: null,
            ),
            ElevatedButton(
              onPressed: () {
                // 저장 로직 구현
              },
              child: const Text('저장'),
            ),
          ],
        ),
      ),
    );
  }
}
