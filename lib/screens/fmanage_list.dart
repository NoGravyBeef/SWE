import 'package:flutter/material.dart';
import 'package:calendar/widgets/flist_elements.dart';
import 'package:calendar/screens/friend_request_screen.dart';

class FManage_list extends StatefulWidget {
  const FManage_list({super.key});

  @override
  State<FManage_list> createState() => _Friends_list();
}

class _Friends_list extends State<FManage_list> {
  final List<User> users = List.generate(
    10,
    (index) => User('User $index'),
  );

  final bool _isChecked = false;

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height * 0.03,
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
                  '친구 관리',
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

                            Checkbox(
                              value: users[index].isChecked,
                              onChanged: (value) {
                                setState(() {
                                  users[index].isChecked = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.035,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.21,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.delete,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.004,
                            ),
                            const Text(
                              '친구삭제',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontFamily: 'JetBrain',
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.023,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
