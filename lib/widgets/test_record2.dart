import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class test_record2 extends StatefulWidget {
  const test_record2({super.key});
  @override
  State<test_record2> createState() => _test_record2State();
}

class _test_record2State extends State<test_record2> {
  late final RecorderController recorderController;

  String? path;
  bool isRecording = false;
  bool isRecordingCompleted = false;
  bool isLoading = true;

  @override
  void initState() {
    _initialiseController();
    super.initState();
  }

  @override
  void dispose() {
    recorderController.dispose();
    super.dispose();
  }

  void _initialiseController() async {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 16000;
  }

  Future<void> _startRecording() async {
    await recorderController.record(path: path);
  }

  Future<void> _stopRecording() async {
    path = await recorderController.stop();
    print('$path');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade700,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AudioWaveforms(
            enableGesture: true,
            size: Size(MediaQuery.of(context).size.width / 2, 50),
            recorderController: recorderController,
            waveStyle: const WaveStyle(
              waveColor: Colors.white,
              extendWaveform: true,
              showMiddleLine: false,
              waveCap: StrokeCap.butt,
              durationLinesColor: Colors.amber,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xff1e1b26),
            ),
            padding: const EdgeInsets.only(left: 18),
            margin: const EdgeInsets.symmetric(horizontal: 15),
          ),
          IconButton(
            icon: const Icon(Icons.mic),
            tooltip: 'Start recording',
            onPressed: _startRecording,
          ),
          IconButton(
            icon: const Icon(Icons.stop),
            onPressed: _stopRecording,
          )
        ]),
      ),
    );
  }
}
