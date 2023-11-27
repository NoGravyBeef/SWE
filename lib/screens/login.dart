import 'package:flutter/material.dart';
import 'calendarscreen.dart';

// 로그인 페이지를 위한 StatefulWidget 클래스
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // 로그인 페이지의 상태를 생성
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 사용자 이름과 비밀번호를 위한 텍스트 컨트롤러
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // 화면 너비를 가져온다
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 배경 이미지 설정
          Image.asset(
            'assets/image1.jpg', // 배경 이미지 경로
            fit: BoxFit.cover, // 이미지를 화면에 꽉 차게 표시
            width: double.infinity,
            height: double.infinity,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100.0),

              // 상단의 로고 이미지
              const Image(
                image: AssetImage('assets/event icon.png'),
                width: 100,
                height: 100,
              ),

              const SizedBox(height: 50.0),

              // 사용자 이름 입력 필드
              Flexible(
                child: Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 20.0),
                      const Icon(
                        Icons.person,
                        size: 30.0,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              fontFamily: "JetBrainsMono-Regular",
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              // 비밀번호 입력 필드
              Flexible(
                child: Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 20.0),
                      const Icon(
                        Icons.lock,
                        size: 30.0,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontFamily: "JetBrainsMono-Regular",
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              // 회원가입 및 로그인 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 회원가입 버튼
                  ElevatedButton(
                    onPressed: _join, // 회원가입 버튼 클릭 시 수행할 동작
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 219, 217, 232)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(85, 20)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'join',
                      style: TextStyle(
                        fontFamily: "JetBrainsMono-Regular",
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05), // 버튼 간 간격
                  // 로그인 버튼
                  ElevatedButton(
                    onPressed: _login, // 로그인 버튼 클릭 시 수행할 동작
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 219, 217, 232)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(85, 20)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'login',
                      style: TextStyle(
                        fontFamily: "JetBrainsMono-Regular",
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50.0),

              // 구글 로그인 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _sign, // 구글 로그인 버튼 클릭 시 수행할 동작
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 255, 255, 255)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(290, 47)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('assets/google logo.png'),
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          'Sign in using Google',
                          style: TextStyle(
                            fontFamily: "JetBrainsMono-Regular",
                            fontWeight: FontWeight.w900,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _login() {
    // 로그인 조건을 확인하는 로직
    if (_usernameController.text == "올바른아이디" &&
        _passwordController.text == "올바른비밀번호") {
      // 조건이 충족되면 CalendarScreen으로 이동
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CalendarScreen()),
      );
    } else {
      // 조건이 충족되지 않으면 알림 메시지 출력
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('ID와 Password를 다시 확인해주세요.'),
        ),
      );
    }
  }

  void _join() {
    // 회원가입 로직
    print("회원가입");
  }
}

void _sign() {
  // 구글 로그인 로직
  print("google 로그인");
}
