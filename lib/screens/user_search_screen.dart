import 'package:flutter/material.dart';

// 사용자 데이터 구조
class User {
  final String name;

  User(this.name);
}

class UserSearchScreen extends StatefulWidget {
  const UserSearchScreen({super.key});

  @override
  State<UserSearchScreen> createState() => _UserSearchScreenState();
}

class _UserSearchScreenState extends State<UserSearchScreen> {
  void onpressed() {}

  final List<User> users = List.generate(
    10,
    (index) => User('User $index'), // 예시 사용자들 생성
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size; // 현재 화면 크기를 가져옵니다.

    return Container(
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
              SizedBox(height: screenSize.height * 0.05), // 화면 높이의 5%
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
              SizedBox(height: screenSize.height * 0.08), // 화면 높이의 8%
              Row(
                children: [
                  SizedBox(width: screenSize.width * 0.1), // 화면 너비의 10%
                  Expanded(
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
                  SizedBox(width: screenSize.width * 0.05), // 화면 너비의 2%
                  IconButton(
                    icon: Transform.translate(
                      offset: const Offset(-7, -7),
                      child: const Icon(
                        Icons.search_rounded,
                        size: 50,
                      ),
                    ),
                    onPressed: onpressed,
                  ),
                  SizedBox(width: screenSize.width * 0.08), // 화면 너비의 10%
                ],
              ),
              SizedBox(height: screenSize.height * 0.02), // 화면 높이의 2%
              //
              //여기서부터 검색된 공간
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white.withOpacity(0.5),
                    border: Border.all(color: Colors.black12, width: 3),
                  ),
                  height: screenSize.height * 0.65, // 화면 높이의 65%
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.topCenter,
                        colors: [Colors.white, Colors.white.withOpacity(0.02)],
                        stops: const [0.9, 1],
                        tileMode: TileMode.mirror,
                      ).createShader(bounds);
                    },
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 7,
                            horizontal: 10,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
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
                              Text(
                                users[index].name,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'JetBrain',
                                    fontWeight: FontWeight.w700),
                              ),
                              Container(
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
                                      minimumSize: const Size(
                                          40, 25), // 버튼 최소 사이즈 조절 (가로, 세로)
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
