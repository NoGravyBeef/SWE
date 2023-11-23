import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Dialog(
      child: Container(
        height: screenSize.height * 0.35,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
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
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 18, // 폰트 크기 조절
                      fontFamily: 'JetBrain',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -3,
                    ),
                  ),
                  Text(
                    '휴일 선택 활성화',
                    style: TextStyle(
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 18, // 폰트 크기 조절
                      fontFamily: 'JetBrain',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -3,
                    ),
                  ),
                ],
              ),
            ),
            //"월 화 수 목 금 토 일" 버튼 파트
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: screenSize.height * 0.032,
                  width: screenSize.height * 0.032,
                  margin: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      '월',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 61, 61, 61),
                        fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                        fontFamily: 'JetBrain',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.032,
                  width: screenSize.height * 0.032,
                  margin: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      '화',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 61, 61, 61),
                        fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                        fontFamily: 'JetBrain',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.032,
                  width: screenSize.height * 0.032,
                  margin: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      '수',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 61, 61, 61),
                        fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                        fontFamily: 'JetBrain',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.032,
                  width: screenSize.height * 0.032,
                  margin: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      '목',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 61, 61, 61),
                        fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                        fontFamily: 'JetBrain',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.032,
                  width: screenSize.height * 0.032,
                  margin: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      '금',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 61, 61, 61),
                        fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                        fontFamily: 'JetBrain',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.032,
                  width: screenSize.height * 0.032,
                  margin: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      '토',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 61, 61, 61),
                        fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                        fontFamily: 'JetBrain',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height * 0.032,
                  width: screenSize.height * 0.032,
                  margin: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      //on off 기능구현
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      '일',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 61, 61, 61),
                        fontSize: screenSize.height * 0.02, // 폰트 크기 조절
                        fontFamily: 'JetBrain',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                // 휴일 선택 활성화 on off 부분
                Switch(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.01),
            Row(
              children: [
                SizedBox(width: screenSize.width * 0.05),
                const Text(
                  '휴일 색상 선택',
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 61, 61),
                    fontSize: 18, // 폰트 크기 조절
                    fontFamily: 'JetBrain',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -3,
                  ),
                ),
              ],
            ),
            SizedBox(width: screenSize.width * 0.05),
            //색상 선택 버튼 부분
          ],
        ),
      ),
    );
  }
}
