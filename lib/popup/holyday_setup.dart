import 'package:calendar/provider/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

/* 값 전달할땐
void showCustomDialog() async {
    final result = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return Widget();
        }
    );
    setState(() {
        aaa = result;
    });
}
이런식으로 사용 */

class HolydaySet extends StatefulWidget {
  const HolydaySet({super.key});

  @override
  State<HolydaySet> createState() => _HolydaySetState();
}

class _HolydaySetState extends State<HolydaySet> {
  bool isChecked = true;
  late testProvider _provider;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _provider = Provider.of<testProvider>(context, listen: false);

    return Container(
      height: screenSize.height * 0.232,
      padding: const EdgeInsets.fromLTRB(17, 10, 17, 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '휴일 선택',
                    style: TextStyle(
                      color: Color(0xff535353),
                      fontSize: 17, // 폰트 크기 조절

                      fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                    ),
                  ),
                  Text(
                    '휴일 선택 활성화',
                    style: TextStyle(
                      color: Color(0xff535353),
                      fontSize: 17, // 폰트 크기 조절

                      fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                    ),
                  ),
                ],
              ),
            ),
            //"월 화 수 목 금 토 일" 버튼 파트
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //휴일 선택 버튼 외부 꾸미기
                Container(
                  height: screenSize.height * 0.03,
                  width: screenSize.height * 0.03,
                  margin: const EdgeInsets.all(2.5),
                  //휴일 선택 버튼 내부
                  child: ElevatedButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, -screenSize.height * 0.001),
                      child: Text(
                        '월',
                        style: TextStyle(
                          color: const Color(0xff535353),
                          fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                          fontFamily: "JetBrain",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.03,
                  width: screenSize.height * 0.03,
                  margin: const EdgeInsets.all(2.5),
                  //휴일 선택 버튼 내부
                  child: ElevatedButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, -screenSize.height * 0.001),
                      child: Text(
                        '화',
                        style: TextStyle(
                          color: const Color(0xff535353),
                          fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                          fontFamily: "JetBrain",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.03,
                  width: screenSize.height * 0.03,
                  margin: const EdgeInsets.all(2.5),
                  //휴일 선택 버튼 내부
                  child: ElevatedButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, -screenSize.height * 0.001),
                      child: Text(
                        '수',
                        style: TextStyle(
                          color: const Color(0xff535353),
                          fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                          fontFamily: "JetBrain",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.03,
                  width: screenSize.height * 0.03,
                  margin: const EdgeInsets.all(2.5),
                  //휴일 선택 버튼 내부
                  child: ElevatedButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, -screenSize.height * 0.001),
                      child: Text(
                        '목',
                        style: TextStyle(
                          color: const Color(0xff535353),
                          fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                          fontFamily: "JetBrain",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.03,
                  width: screenSize.height * 0.03,
                  margin: const EdgeInsets.all(2.5),
                  //휴일 선택 버튼 내부
                  child: ElevatedButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, -screenSize.height * 0.001),
                      child: Text(
                        '금',
                        style: TextStyle(
                          color: const Color(0xff535353),
                          fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                          fontFamily: "JetBrain",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.03,
                  width: screenSize.height * 0.03,
                  margin: const EdgeInsets.all(2.5),
                  //휴일 선택 버튼 내부
                  child: ElevatedButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, -screenSize.height * 0.001),
                      child: Text(
                        '토',
                        style: TextStyle(
                          color: const Color(0xff535353),
                          fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                          fontFamily: "JetBrain",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.03,
                  width: screenSize.height * 0.03,
                  margin: const EdgeInsets.all(2.5),
                  //휴일 선택 버튼 내부
                  child: ElevatedButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, -screenSize.height * 0.001),
                      child: Text(
                        '일',
                        style: TextStyle(
                          color: const Color(0xff535353),
                          fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                          fontFamily: "JetBrain",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),

                // 휴일 선택 활성화 on off 버튼
                Transform.scale(
                  scale: 0.87,
                  child: CupertinoSwitch(
                    value: isChecked,
                    activeColor: Colors.grey,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.02),
            Row(
              children: [
                SizedBox(width: screenSize.width * 0.01),
                Text(
                  '휴일 색상 선택',
                  style: TextStyle(
                    color: const Color(0xff535353),
                    fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.004),
            //색상 선택 버튼 바깥 꾸미기
            Container(
              width: screenSize.width * 0.7,
              height: screenSize.height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              //
              //휴일 색상 버튼 부분
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenSize.height * 0.035,
                    width: screenSize.height * 0.035,
                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    //버튼 부분
                    child: TextButton(
                      onPressed: () {
                        //on off 기능구현
                        setState(() {
                          _provider.change_holiday_color(Colors.red);
                        });
                      },
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color(0xff7D7D7D),
                      ),
                      child: const Text(''),
                    ),
                  ),
                  Container(
                    height: screenSize.height * 0.035,
                    width: screenSize.height * 0.035,
                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    //버튼 부분
                    child: TextButton(
                      onPressed: () {
                        //on off 기능구현
                      },
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color(0xffFD9494),
                      ),
                      child: const Text(''),
                    ),
                  ),
                  Container(
                    height: screenSize.height * 0.035,
                    width: screenSize.height * 0.035,
                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    //버튼 부분
                    child: TextButton(
                      onPressed: () {
                        //on off 기능구현
                      },
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color(0xffACACFF),
                      ),
                      child: const Text(''),
                    ),
                  ),
                  Container(
                    height: screenSize.height * 0.035,
                    width: screenSize.height * 0.035,
                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    //버튼 부분
                    child: TextButton(
                      onPressed: () {
                        //on off 기능구현
                      },
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color(0xff8DF994),
                      ),
                      child: const Text(''),
                    ),
                  ),
                  Container(
                    height: screenSize.height * 0.035,
                    width: screenSize.height * 0.035,
                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    //버튼 부분
                    child: TextButton(
                      onPressed: () {
                        //on off 기능구현
                      },
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color(0xffE1E1E1),
                      ),
                      child: const Text(''),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
