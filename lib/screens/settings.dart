import 'package:calendor_project/widgets/calander_start_days.dart';
import 'package:calendor_project/widgets/fixdays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool ischecked = false;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/first_background.webp'),
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
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
                      icon: const Icon(Icons.arrow_back_rounded)),
                ],
              ),
            ),
            // SizedBox(
            //   height: screenSize.height * 0.02,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 36,
                      fontFamily: 'JetBrain',
                      //letterSpacing:
                      color: Colors.black),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 36,
                      color: Color(0xff808080),
                    )),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.12],
                      tileMode: TileMode.clamp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '알림',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    CupertinoSwitch(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = false;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.12],
                      tileMode: TileMode.clamp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '음력',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    CupertinoSwitch(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = false;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.12],
                      tileMode: TileMode.clamp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '절기',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    CupertinoSwitch(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = false;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.14],
                      tileMode: TileMode.decal),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Padding(
                padding: EdgeInsets.only(left: 11, right: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '시작 요일',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: calander_start_days(days: '월'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: calander_start_days(days: '화'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: calander_start_days(days: '수'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: calander_start_days(days: '목'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: calander_start_days(days: '금'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: calander_start_days(days: '토'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: calander_start_days(days: '일'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.14],
                      tileMode: TileMode.decal),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '휴일',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.last_page))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.12],
                      tileMode: TileMode.clamp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '일정 공개',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    CupertinoSwitch(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = false;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.12],
                      tileMode: TileMode.clamp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '친구 신청',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    CupertinoSwitch(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = false;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.12],
                      tileMode: TileMode.clamp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '상단바',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    CupertinoSwitch(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = false;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Container(
              height: screenSize.height * 0.0535,
              width: screenSize.width * 0.85,
              decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(143, 194, 194, 194),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.14],
                      tileMode: TileMode.decal),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '일정 고정',
                      style: TextStyle(color: Color(0xff5D5050), fontSize: 18),
                    ),
                    IconButton(
                        onPressed: () {
                          showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal:
                                          (screenSize.height * 0.00575) * 2,
                                      vertical:
                                          (screenSize.width * 0.0103) * 2),
                                  content: const fixdays(),
                                );
                              });
                        },
                        icon: const Icon(Icons.last_page))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            SizedBox(
              width: screenSize.width * 0.25,
              height: screenSize.height * 0.0442,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: const Color(0xffD1D1EA),
                  ),
                  onPressed: () {},
                  child: const Text(
                    '저장',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
