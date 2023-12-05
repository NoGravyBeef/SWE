import 'dart:io';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:calendar/widgets/test_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calendar/provider/test_provider.dart';

class test_record2 extends StatefulWidget {
  const test_record2({super.key});
  @override
  State<test_record2> createState() => _test_record2State();
}

class _test_record2State extends State<test_record2> {
  late RecorderController recorderController;
  late Directory directory;
  late final PlayerController playerController;
  late testProvider _provider;

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
      ..androidOutputFormat = AndroidOutputFormat.aac_adts
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
    _provider.get_audioPath(path);
  }

  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<testProvider>(context, listen: false);
    return Container(
      width: MediaQuery.of(context).size.width * 0.58,
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(blurRadius: 1, offset: Offset(0, 2), color: Colors.grey)
          ]),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AudioWaveforms(
              enableGesture: false,
              size: Size(MediaQuery.of(context).size.width / 3.7, 30),

              recorderController: recorderController,
              waveStyle: const WaveStyle(
                waveColor: Colors.redAccent,
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
                  style: IconButton.styleFrom(
                      splashFactory: NoSplash.splashFactory),
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
            IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  if (Provider.of<testProvider>(context, listen: false)
                          .audioPath ==
                      null) {
                    showDialog(
                        barrierDismissible: true,
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            content: const Text(
                              '녹음본이 존재하지 않습니다!',
                              style: TextStyle(fontSize: 17),
                            ),
                          );
                        }));
                  } else {
                    showDialog(
                        barrierDismissible: true,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            content: const test_player(),
                          );
                        });
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                )),
          ]),
    );
  }
}
