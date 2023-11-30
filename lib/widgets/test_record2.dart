import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:audioplayers/audioplayers.dart';

class test_record2 extends StatefulWidget {
  const test_record2({super.key});
  @override
  State<test_record2> createState() => _test_record2State();
}

class _test_record2State extends State<test_record2> {
  late final RecorderController recorderController;
  late final PlayerController playerController;
  late Directory directory;

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

    playerController = PlayerController();
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
    return Container(
      width: MediaQuery.of(context).size.width * 0.58,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [BoxShadow(blurRadius: 5, offset: Offset(0, 3))]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        AudioWaveforms(
          enableGesture: true,
          size: Size(MediaQuery.of(context).size.width / 3.7, 50),
          recorderController: recorderController,
          waveStyle: const WaveStyle(
            waveColor: Color(0xff808080),
            extendWaveform: true,
            showMiddleLine: false,
            waveCap: StrokeCap.butt,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          padding: const EdgeInsets.only(left: 18),
          //margin: const EdgeInsets.symmetric(horizontal: 15),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff808080),
              ),
            ),
            Container(
                width: 23,
                height: 23,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white)),
            IconButton(
              style:
                  IconButton.styleFrom(splashFactory: NoSplash.splashFactory),
              onPressed: () async {
                if (recorderController.isRecording) {
                  await _stopRecording();
                } else {
                  await _startRecording();
                }
              },
              icon: const Icon(
                Icons.circle,
                color: Colors.red,
                size: 21,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
