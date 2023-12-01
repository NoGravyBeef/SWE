import 'package:flutter/material.dart';

class record_player extends StatefulWidget {
  const record_player({super.key});

  @override
  State<record_player> createState() => _record_playerState();
}

class _record_playerState extends State<record_player> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/record_page.webp'),
        )),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * (40 / screenSize.height),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    style: IconButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                    )),
              ],
            ),
            SizedBox(
              height: screenSize.height * (50 / screenSize.height),
            ),
            playerForms(screenSize: screenSize),
            SizedBox(
              height: screenSize.height * (50 / screenSize.height),
            ),
            playerForms(screenSize: screenSize),
            SizedBox(
              height: screenSize.height * (50 / screenSize.height),
            ),
            playerForms(screenSize: screenSize)
          ],
        ),
      ),
    );
  }
}

class playerForms extends StatelessWidget {
  const playerForms({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width * (320 / screenSize.width),
      height: screenSize.height * (132 / screenSize.height),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [BoxShadow(blurRadius: 2, offset: Offset(0, 2))]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 7),
            child: Text(
              '녹음본 제목',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'yyyy.mm.dd',
              style: TextStyle(
                  fontSize: 10, color: Color(0xff808080), letterSpacing: 1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff999494)),
                ),
              ),
              Container(
                width: 256,
                height: 2.2,
                decoration: const BoxDecoration(color: Color(0xffc4c4c4)),
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  '00:00',
                  style: TextStyle(fontSize: 9.5),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Text(
                  '99:99',
                  style: TextStyle(fontSize: 9.5),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.play_arrow_rounded,
                color: Color(0xff808080),
              ),
              Icon(
                Icons.pause,
                color: Color(0xff808080),
              ),
              Icon(Icons.delete_outlined, color: Color(0xff808080))
            ],
          )
        ],
      ),
    );
  }
}
