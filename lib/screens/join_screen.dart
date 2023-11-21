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
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                  Flexible(
                    flex: 11,
                    child: Container(
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
                  Flexible(
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.04),
              // 비밀번호 입력 필드
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                  Flexible(
                    flex: 11,
                    child: Container(
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
                  Flexible(
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.04),
              // 비밀번호 확인 필드
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                  Flexible(
                    flex: 11,
                    child: Container(
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
                  Flexible(
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.04),
              // 성 및 이름 입력 필드
              Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                  Flexible(
                    flex: 20,
                    child: Container(
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
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.02),
                  ),
                  Flexible(
                    flex: 20,
                    child: Container(
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
                  ),
                  Flexible(
                    flex: 4,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.06),
              // 회원가입 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                  Flexible(
                    flex: 10,
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 143, 204, 138),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            spreadRadius: -5.0,
                            blurRadius: 10.0,
                            offset: const Offset(0, 6.0),
                          ),
                        ],
                      ),
                      child: ClipRect(
                        child: TextButton(
                          onPressed: pressed,
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            '회원가입',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'JetBrain',
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.2),
              // 구글로 시작 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: SizedBox(width: screenSize.width * 0.05),
                  ),
                  Flexible(
                    flex: 10,
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: -4.0,
                            blurRadius: 7.0,
                            offset: const Offset(0, 6.0),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: pressed,
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/google_logo.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
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
                  ),
                  Flexible(
                    flex: 2,
                    child: SizedBox(width: screenSize.width * 0.05),
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
