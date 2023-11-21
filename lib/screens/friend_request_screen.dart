import 'package:flutter/material.dart';

// 사용자 데이터 구조
class User {
  final String name;
  User(this.name);
}

// 친구 신청 화면 위젯
class FriendRequestScreen extends StatefulWidget {
  const FriendRequestScreen({super.key});

  @override
  State<FriendRequestScreen> createState() => _FriendRequestScreenState();
}

// 친구 신청 화면의 상태 관리
class _FriendRequestScreenState extends State<FriendRequestScreen> {
  // 예시 데이터: 보낸 친구 신청 목록
  final List<User> sentRequests = List.generate(
    20,
    (index) => User('User $index'),
  );

  // 예시 데이터: 받은 친구 신청 목록
  final List<User> receivedRequests = List.generate(
    20,
    (index) => User('User ${index + 5}'),
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        // 배경 이미지 설정
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/first_background.webp'),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            // 화면 상단 여백
            SizedBox(height: screenSize.height * 0.05),
            // 타이틀 행
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '친구 신청목록',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'JetBrain',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: screenSize.width * 0.05),
                const Icon(
                  Icons.group,
                  size: 50,
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.02),
            // 전체 레이아웃을 수평으로 분할
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 보낸 친구 신청 섹션
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          '보낸 친구신청',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'JetBrain',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        // 보낸 친구 신청 목록
                        Expanded(
                          //listview 꾸미기 부분
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.5),
                                border:
                                    Border.all(color: Colors.black12, width: 3),
                              ),
                              padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                              //listview 내용
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.white,
                                      Colors.white.withOpacity(0.02)
                                    ],
                                    stops: const [0.87, 1],
                                    tileMode: TileMode.mirror,
                                  ).createShader(bounds);
                                },
                                child: ListView.builder(
                                  itemCount: sentRequests.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(sentRequests[index].name),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.1),
                        // listview 아래 여백
                      ],
                    ),
                  ),
                  // 세로 점선 경계
                  CustomPaint(
                    painter: DottedLinePainter(),
                    size: Size(1, screenSize.height * 0.77),
                  ),
                  // 받은 친구 신청 섹션
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          '받은 친구신청',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'JetBrain',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        // 받은 친구 신청 목록
                        Expanded(
                          //listview 꾸미기 부분
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.5),
                                border:
                                    Border.all(color: Colors.black12, width: 3),
                              ),
                              padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                              //listview 내용
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.white,
                                      Colors.white.withOpacity(0.02)
                                    ],
                                    stops: const [0.87, 1],
                                    tileMode: TileMode.mirror,
                                  ).createShader(bounds);
                                },
                                child: ListView.builder(
                                  itemCount: sentRequests.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(sentRequests[index].name),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.1),
                        // listview 아래 여백
                      ],
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

// 점선을 그리는 CustomPainter 클래스
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + 6),
        paint,
      );
      startY += 10;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
