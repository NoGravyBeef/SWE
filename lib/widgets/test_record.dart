import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

class test_recorde extends StatefulWidget {
  const test_recorde({super.key});

  @override
  State<test_recorde> createState() => _test_recordeState();
}

class _test_recordeState extends State<test_recorde> {
  @override
  void initState() {
    initRecoder();
    super.initState();
  }

  @override
  void dispose() {
    recorder.stopRecorder();
    super.dispose();
  }

  final recorder = FlutterSoundRecorder();
  String filePath = '';

  Future initRecoder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw 'Permission not granted';
    }
    await recorder.openRecorder();
    recorder.setSubscriptionDuration(const Duration(milliseconds: 500));
  }

  Future startRecord() async {
    await recorder.startRecorder(toFile: 'Audio');
  }

  Future stopRecord() async {
    final filePath = await recorder.stopRecorder();
    final file = File(filePath!);
    print('Record file path: $file');
  }

  Future pauseRecorder() async {
    await recorder.pauseRecorder();
  }

  Future resumeRecorder() async {
    await recorder.resumeRecorder();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 3))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<RecordingDisposition>(
              builder: (context, snapshot) {
                final duration =
                    snapshot.hasData ? snapshot.data!.duration : Duration.zero;
                String twoDigits(int n) => n.toString().padLeft(2, '0');
                final twoDigitMinutes =
                    twoDigits(duration.inMinutes.remainder(60));
                final twoDigitSeconds =
                    twoDigits(duration.inSeconds.remainder(60));
                return Text(
                  '$twoDigitMinutes:$twoDigitSeconds',
                  style: const TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                );
              },
              stream: recorder.onProgress,
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
                  style: IconButton.styleFrom(
                      splashFactory: NoSplash.splashFactory),
                  onPressed: () async {
                    if (recorder.isRecording) {
                      await stopRecord();
                    } else {
                      await startRecord();
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
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  shadowColor: Colors.white,
                ),
                onPressed: () async {
                  await resumeRecorder();
                },
                child: const Icon(
                  Icons.refresh_outlined,
                  size: 30,
                  color: Color(0xff808080),
                )),
            // z
          ],
        ));
  }
}
