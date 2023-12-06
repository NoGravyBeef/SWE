import 'package:calendar/popup/holyday_setup.dart';
import 'package:calendar/provider/test_provider.dart';
import 'package:calendar/screens/login.dart';
import 'package:calendar/widgets/calander_start_days.dart';
import 'package:calendar/widgets/fixdays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

final auth = FirebaseAuth.instance;

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;

  late testProvider _provider;

  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<testProvider>(context, listen: false);
    var screenSize = MediaQuery.of(context).size;
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
                const DefaultTextStyle(
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        fontFamily: 'JetBrain',
                        //letterSpacing:
                        color: Colors.black),
                    child: Text('Settings')),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 36,
                      color: Colors.black87,
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
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('알림')),
                    CupertinoSwitch(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
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
                      stops: [0.0, 0.12],
                      tileMode: TileMode.clamp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('음력')),
                    CupertinoSwitch(
                        value: isChecked2,
                        onChanged: (value) {
                          setState(() {
                            isChecked2 = value;
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
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('절기')),
                    CupertinoSwitch(
                        value: isChecked3,
                        onChanged: (value) {
                          setState(() {
                            isChecked3 = value;
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
                padding: const EdgeInsets.only(left: 15, right: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('시작 요일')),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: calander_start_days(
                            days: '월',
                            onPressed: () {
                              _provider.change_start(1);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: calander_start_days(
                            days: '화',
                            onPressed: () {
                              _provider.change_start(2);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: calander_start_days(
                            days: '수',
                            onPressed: () {
                              _provider.change_start(3);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: calander_start_days(
                            days: '목',
                            onPressed: () {
                              _provider.change_start(4);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: calander_start_days(
                            days: '금',
                            onPressed: () {
                              _provider.change_start(5);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: calander_start_days(
                            days: '토',
                            onPressed: () {
                              _provider.change_start(6);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: calander_start_days(
                            days: '일',
                            onPressed: () {
                              _provider.change_start(7);
                            },
                          ),
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
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('휴일')),
                    IconButton(
                        onPressed: () {
                          showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                  content: const HolydaySet(),
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
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('일정 공개')),
                    CupertinoSwitch(
                        value: isChecked4,
                        onChanged: (value) {
                          setState(() {
                            isChecked4 = value;
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
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('친구 신청')),
                    CupertinoSwitch(
                        value: isChecked5,
                        onChanged: (value) {
                          setState(() {
                            isChecked5 = value;
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
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('상단바')),
                    CupertinoSwitch(
                        value: isChecked6,
                        onChanged: (value) {
                          setState(() {
                            isChecked6 = value;
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //
                  children: [
                    const DefaultTextStyle(
                        style:
                            TextStyle(color: Color(0xff5D5050), fontSize: 18),
                        child: Text('일정 고정')),
                    IconButton(
                        onPressed: () {
                          showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
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
              width: screenSize.width * 0.3,
              height: screenSize.height * 0.0442,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: const Color(0xffD1D1EA),
                  ),
                  onPressed: () {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: const Text('로그아웃 하시겠습니까?'),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    auth.signOut();
                                    GoogleSignIn().signOut();
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage()));
                                  },
                                  child: const Text('예')),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('아니요'))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    '로그아웃',
                    style: TextStyle(color: Colors.white54, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    ); //,
    //);
  }
}
