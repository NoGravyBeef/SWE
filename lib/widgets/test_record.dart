/*import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RecordWidget(),
    );
  }
}

class RecordWidget extends StatefulWidget {
  const RecordWidget({super.key});

  @override
  _RecordWidgetState createState() => _RecordWidgetState();
}

class _RecordWidgetState extends State<RecordWidget> {
  late FlutterSoundPlayer _soundPlayer;
  late FlutterSoundRecorder _soundRecorder;
  bool _isRecording = false;

  @override
  void initState() {
    super.initState();
    _soundPlayer = FlutterSoundPlayer();
    _soundRecorder = FlutterSoundRecorder();
  }

  @override
  void dispose() {
    _soundPlayer.closePlayer();
    _soundRecorder.closeRecorder();
    super.dispose();
  }

  Future<void> _startRecording() async {
    try {
      await _soundRecorder.openRecorder();
      await _soundRecorder.startRecorder(
        toFile: 'example_recording.aac', // 녹음 파일 이름 및 형식 지정
      );
      setState(() {
        _isRecording = true;
      });
    } catch (e) {
      print('Recording error: $e');
    }
  }

  Future<void> _stopRecording() async {
    try {
      await _soundRecorder.stopRecorder();
      setState(() {
        _isRecording = false;
      });
    } catch (e) {
      print('Stop recording error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isRecording
                ? const Text('녹음 중...')
                : const Text('녹음을 시작하려면 버튼을 눌러주세요.'),
            const SizedBox(height: 20.0),
            _isRecording
                ? ElevatedButton(
                    onPressed: _stopRecording,
                    child: const Text('녹음 중지'),
                  )
                : ElevatedButton(
                    onPressed: _startRecording,
                    child: const Text('녹음 시작'),
                  ),
            const SizedBox(height: 20.0),
            //_filePath.isNotEmpty ? Text('파일 경로: $_filePath') : const SizedBox(),
          ],
        ),
      ),
    );
  }
}*/
