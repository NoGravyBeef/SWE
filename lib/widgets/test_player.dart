import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calendar/provider/test_provider.dart';
import 'package:intl/intl.dart';

class test_player extends StatefulWidget {
  const test_player({super.key});

  @override
  State<test_player> createState() => _test_playerState();
}

class _test_playerState extends State<test_player> {
  late final PlayerController playerController;
  String? path;
  bool isCompleted = false;

  @override
  void initState() {
    _initialiseController();
    super.initState();
  }

  void _initialiseController() {
    playerController = PlayerController();
    playerController.onCompletion.listen((_) {
      setState(() {
        isCompleted = true;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    path = Provider.of<testProvider>(context, listen: false).audioPath;
    if (path != null) {
      playerController.preparePlayer(path: path!);
    }
  }

  @override
  void dispose() {
    playerController.dispose();
    super.dispose();
  }

  void startPlayer() async {
    if (isCompleted) {
      await playerController.stopPlayer();
      await playerController.preparePlayer(path: path!);
      isCompleted = false; // 재생이 다시 시작되었으므로 완료 여부를 false로 변경
    }
    await playerController.startPlayer(finishMode: FinishMode.stop);
  }

  void pausePlayer() async {
    await playerController.pausePlayer();
  }

  String formatDuration(int milliseconds) {
    int seconds = (milliseconds / 1000).truncate();
    int minutes = (seconds / 60).truncate();
    seconds = seconds % 60;
    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AudioFileWaveforms(
              enableSeekGesture: true,
              size: Size(MediaQuery.of(context).size.width / 2, 50),
              playerWaveStyle: const PlayerWaveStyle(
                  showSeekLine: false,
                  scaleFactor: 200,
                  fixedWaveColor: Colors.white30,
                  liveWaveColor: Colors.white,
                  waveCap: StrokeCap.butt),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              playerController: playerController),
          ElevatedButton(
              onPressed: () {
                startPlayer();
              },
              child: const Text('play')),
          ElevatedButton(
              onPressed: () {
                pausePlayer();
              },
              child: const Text('stop')),
          StreamBuilder<int>(
            stream: playerController.onCurrentDurationChanged,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  formatDuration(snapshot.data!),
                  style: const TextStyle(fontSize: 20),
                );
              } else {
                return const Text('00:00', style: TextStyle(fontSize: 20));
              }
            },
          ),
        ],
      ),
    );
  }
}
