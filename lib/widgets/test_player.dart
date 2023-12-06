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
      setState(() {
        isCompleted = false;
      }); // 재생이 다시 시작되었으므로 완료 여부를 false로 변경
    }
    await playerController.startPlayer(finishMode: FinishMode.stop);
  }

  void pausePlayer() async {
    await playerController.pausePlayer();
    //isCompleted = false;
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
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * (320 / screenSize.width),
      height: screenSize.height * (250 / screenSize.height),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [BoxShadow(blurRadius: 2, offset: Offset(0, 2))]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text((DateFormat('yyyy-MM-dd')
                  .format(Provider.of<testProvider>(context).record_day))
              .toString()),
          AudioFileWaveforms(
              //margin: const EdgeInsets.all(0),
              //enableSeekGesture: true,
              size: Size(screenSize.width / 1.5,
                  screenSize.height * (50 / screenSize.height)),
              waveformType: WaveformType.long,
              playerWaveStyle: const PlayerWaveStyle(
                  spacing: 5,
                  showSeekLine: false,
                  scaleFactor: 200,
                  fixedWaveColor: Colors.grey,
                  liveWaveColor: Colors.redAccent,
                  waveCap: StrokeCap.butt),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15)),
              playerController: playerController),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    startPlayer();
                  },
                  icon: Icon(
                    (isCompleted) ? Icons.refresh : Icons.play_arrow,
                    size: 30,
                    color: Colors.black87,
                  )),
              IconButton(
                  style: IconButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white),
                  onPressed: () {
                    pausePlayer();
                  },
                  icon: const Icon(
                    Icons.pause,
                    size: 30,
                    color: Colors.black87,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
