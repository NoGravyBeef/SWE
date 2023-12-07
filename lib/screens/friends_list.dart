import 'package:flutter/material.dart';
import 'package:calendar/screens/fmanage_list.dart';
import 'package:calendar/screens/friend_request_screen.dart';

class Friends_list extends StatefulWidget {
  const Friends_list({super.key});

  @override
  State<Friends_list> createState() => _Friends_list();
}

class _Friends_list extends State<Friends_list> {
  final List<User> users = List.generate(
    10,
    (index) => User('User $index'),
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg_friends.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * 0.025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: screenSize.width * 0.06),
                IconButton(
                  //나가기
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    size: screenSize.height *
                        0.03, /*color: Colors.grey.shade400*/
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: screenSize.width * 0.02),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '친구 목록',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'JetBrain',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: screenSize.width * 0.02),
                const Icon(
                  Icons.person_4_outlined,
                  color: Colors.grey,
                  size: 50,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenSize.width * 0.05,
                0,
                screenSize.width * 0.05,
                0,
              ),
              child: Container(
                // 검색 결과 영역 스타일링
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white.withOpacity(0.5),
                  border: Border.all(color: Colors.black12, width: 3),
                ),
                height: screenSize.height * 0.65, // 화면 높이의 65%
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.topCenter,
                      colors: [Colors.white, Colors.white.withOpacity(0.02)],
                      stops: const [0.8, 1],
                      tileMode: TileMode.mirror,
                    ).createShader(bounds);
                  },
                  // 검색 결과 리스트
                  child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return Container(
                        // 각 검색 결과 항목 스타일링
                        margin: EdgeInsets.symmetric(
                          vertical: screenSize.height * 0.007,
                          horizontal: screenSize.width * 0.02,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.025,
                          vertical: screenSize.height * 0.012,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // 사용자 이름 표시
                            Container(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                users[index].name,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'JetBrain',
                                    fontWeight: FontWeight.w700),
                              ),
                            ),

                            SizedBox(
                              height: screenSize.height * 0.038,
                              width: screenSize.width * 0.17,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.zero),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffd1d1ea)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  '일정확인',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'JetBrain',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: screenSize.width * 0.35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(
                        screenSize.width * 0.03,
                        0,
                        screenSize.width * 0.03,
                        0,
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const FManage_list()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.delete,
                          color: Colors.grey,
                          size: 17,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.07,
                        ),
                        Text(
                          '친구 관리',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: screenSize.width * 0.025,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.041,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.001,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: screenSize.width * 0.35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(
                        screenSize.width * 0.03,
                        0,
                        screenSize.width * 0.03,
                        0,
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const FriendRequestScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            Icons.people_alt_outlined,
                            color: Colors.grey,
                            size: 17,
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.05,
                        ),
                        Text(
                          '친구 신청 목록',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: screenSize.width * 0.025,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.041,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
