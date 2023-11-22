import 'package:flutter/material.dart';

// 사용자 데이터 구조
class User {
  final String name;

  User(this.name);
}

// 사용자 검색 화면 위젯
class UserSearchScreen extends StatefulWidget {
  const UserSearchScreen({super.key});

  @override
  State<UserSearchScreen> createState() => _UserSearchScreenState();
}

// 사용자 검색 화면의 상태 관리
class _UserSearchScreenState extends State<UserSearchScreen> {
  void onpressed() {}

  // 예시 사용자 데이터 생성
  final List<User> users = List.generate(
    10,
    (index) => User('User $index'),
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size; // 현재 화면 크기를 가져옵니다.

    return Container(
      // 배경 이미지 설정
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/first_background.webp'),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // 상단 여백
              SizedBox(height: screenSize.height * 0.05),
              // 타이틀 행
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '사용자 검색',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'JetBrain',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05),
                  const Icon(
                    Icons.group_add_outlined,
                    size: 50,
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.08),
              // 검색 입력 필드
              Row(
                children: [
                  SizedBox(width: screenSize.width * 0.1),
                  Expanded(
                    // 검색 필드 스타일링
                    child: Container(
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 196, 196, 196),
                            Color.fromARGB(255, 255, 255, 255)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 0.12],
                          tileMode: TileMode.clamp,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: '사용자 검색',
                          hintText: 'Enter the Username',
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 12,
                          ), // 내부 패딩 조절
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14, // 폰트 크기 조절
                            fontFamily: 'JetBrain',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1, // 테두리 두께 조절
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.05),
                  // 검색 버튼
                  IconButton(
                    icon: Transform.translate(
                      offset: Offset(
                        -screenSize.width * 0.005,
                        -screenSize.height * 0.003,
                      ),
                      child: const Icon(
                        Icons.search_rounded,
                        size: 50,
                      ),
                    ),
                    onPressed: onpressed,
                  ),
                  SizedBox(width: screenSize.width * 0.08),
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),
              // 검색 결과 표시 영역
              Padding(
                padding: const EdgeInsets.all(12.0),
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
                              Text(
                                users[index].name,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'JetBrain',
                                    fontWeight: FontWeight.w700),
                              ),
                              // 친구 추가 버튼
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    0,
                                    screenSize.height * 0.005,
                                    0,
                                    screenSize.height * 0.005),
                                decoration: BoxDecoration(
                                  color: const Color(0xffd1d1ea),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // 친구 추가 로직
                                  },
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(7),
                                      minimumSize: Size(
                                          screenSize.width * 0.4,
                                          screenSize.height *
                                              0.01), // 버튼 최소 사이즈 조절 (가로, 세로)
                                      tapTargetSize: MaterialTapTargetSize
                                          .shrinkWrap // 버튼 영역 최소화
                                      ),
                                  child: const Text(
                                    '친구추가',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'JetBrain',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1.5,
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
              SizedBox(height: screenSize.height * 0.1), // 화면 높이의 10%
            ],
          ),
        ),
      ),
    );
  }
}
