import 'package:flutter/material.dart';
import 'calendarscreen.dart';

class LoginPage extends StatefulWidget {
  /*const LoginPage({super.key});*/
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 배경 이미지
          Image.asset(
            'assets/image1.jpg', // 배경 이미지 경로
            fit: BoxFit.cover, // 배경 꽉 채우기
            width: double.infinity,
            height: double.infinity,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100.0),

              const Image(
                image: AssetImage('assets/event icon.png'),
                width: 100,
                height: 100,
              ),

              const SizedBox(height: 50.0),

              // 아이디 입력 필드
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

              // join, login 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _join,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 219, 217, 232)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(85, 20)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // 버튼 모서리 둥글게
                        ),
                      ), // 버튼 색상
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
                  SizedBox(width: screenWidth * 0.05),
                  ElevatedButton(
                    onPressed: _login,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 219, 217, 232)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(85, 20)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // 버튼의 각 모서리를 둥글게 만듦
                        ),
                      ), // 버튼 색상
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

              // Google 로그인
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _sign,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 255, 255, 255)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(290, 47)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // 버튼 모서리 둥글게
                        ),
                      ), // 버튼 색상
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
    print("회원가입");
  }
}

void _sign() {
  print("google 로그인");
}
