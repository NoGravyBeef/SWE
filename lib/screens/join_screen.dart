import 'package:flutter/material.dart';
import 'package:calendar/widgets/join_text_field.dart';

// 회원가입 화면 위젯
class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

// 회원가입 화면의 상태 관리
class _JoinScreenState extends State<JoinScreen> {
  void pressed() {}

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 상단 타이틀
              Container(
                alignment: Alignment.center,
                height: screenSize.height * 0.20,
                child: const Text(
                  '회원가입',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'JetBrain',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              // 아이디 입력 필드
              Center(
                child: Container(
                  width: screenSize.width * 0.85,
                  decoration: const ShapeDecoration(
                    gradient: LinearGradient(
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
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    ),
                  ),
                  child: const JoinTextField(
                    labelText: '아이디',
                    hintText: 'Enter the ID',
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.04),
              // 비밀번호 입력 필드
              Center(
                child: Container(
                  width: screenSize.width * 0.85,
                  decoration: const ShapeDecoration(
                    gradient: LinearGradient(
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
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    ),
                  ),
                  child: const JoinTextField(
                    labelText: '비밀번호',
                    hintText: 'Enter the Password',
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.04),
              // 비밀번호 확인 필드
              Center(
                child: Container(
                  width: screenSize.width * 0.85,
                  decoration: const ShapeDecoration(
                    gradient: LinearGradient(
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
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    ),
                  ),
                  child: const JoinTextField(
                    labelText: '비밀번호 확인',
                    hintText: 'Check the Password',
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.04),
              // 성 및 이름 입력 필드
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenSize.width * 0.4,
                    decoration: const ShapeDecoration(
                      gradient: LinearGradient(
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
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                    ),
                    child: const JoinTextField(
                      labelText: '성',
                      hintText: 'Last Name',
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.05,
                  ),
                  Container(
                    width: screenSize.width * 0.4,
                    decoration: const ShapeDecoration(
                      gradient: LinearGradient(
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
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                    ),
                    child: const JoinTextField(
                      labelText: '이름',
                      hintText: 'First Name',
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.06),
              // 회원가입 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.065,
                    child: ElevatedButton(
                      onPressed: () {
                        // 취소 로직
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffa9d8ab)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '회원가입',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'JetBrain',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.15),
              // 구글로 시작 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.7,
                    height: screenSize.height * 0.055,
                    child: ElevatedButton(
                      onPressed: () {
                        // 취소 로직
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google_logo.png',
                            width: screenSize.height * 0.05,
                            height: screenSize.height * 0.05,
                          ),
                          SizedBox(width: screenSize.width * 0.03),
                          const Text(
                            'Start with google',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'JetBrain',
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 116, 115, 115),
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
