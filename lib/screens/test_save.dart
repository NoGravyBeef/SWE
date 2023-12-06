import 'package:flutter/material.dart';

class test_save extends StatefulWidget {
  final DateTime selectedDate;

  const test_save({super.key, required this.selectedDate});

  @override
  State<test_save> createState() => _test_saveState();
}

class _test_saveState extends State<test_save> {
  final TextEditingController _textEditingController = TextEditingController();
  late String memoContent;
  Map<DateTime, String> memoContentMap = {};

  @override
  void initState() {
    super.initState();
    // Load saved content for the selected date if it exists
    if (_getSavedContent() != null) {
      setState(() {
        memoContent = _getSavedContent()!;
        _textEditingController.text = memoContent;
      });
    } else {
      memoContent = '';
    }
  }

  String? _getSavedContent() {
    return memoContentMap[widget.selectedDate];
  }

  void _saveContentForSelectedDate(String content) {
    setState(() {
      memoContent = content;
      memoContentMap[widget.selectedDate] = content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메모장'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '날짜: ${widget.selectedDate.toString()}',
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: '메모를 입력하세요...',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                _saveContentForSelectedDate(value);
              },
            ),
            const SizedBox(height: 20.0),
            if (memoContent.isNotEmpty)
              Text(
                '저장된 내용: $memoContent',
                style: const TextStyle(fontSize: 16.0),
              ),
          ],
        ),
      ),
    );
  }
}
