import 'package:calendar/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

final auth = FirebaseAuth.instance;

// 회원가입 화면 위젯a
class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

// 회원가입 화면의 상태 관리
class _JoinScreenState extends State<JoinScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  var ispasswordcorrect = true;
  var user;
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

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
          child: Form(
            key: _formKey,
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
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: '이메일',
                        hintText: 'Enter the Email',
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ), // 내부 패딩 조절
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12, // 폰트 크기 조절
                          fontFamily: 'JetBrain',
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1, // 테두리 두께 조절
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
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
                    child: TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: '비밀번호',
                        hintText: 'Enter the Password',
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ), // 내부 패딩 조절
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12, // 폰트 크기 조절
                          fontFamily: 'JetBrain',
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1, // 테두리 두께 조절
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
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
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: '비밀번호 확인',
                        hintText: 'Check the Password',
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ), // 내부 패딩 조절
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12, // 폰트 크기 조절
                          fontFamily: 'JetBrain',
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1, // 테두리 두께 조절
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                      validator: (String? value) {
                        if (value != passwordController) {
                          setState(() {
                            ispasswordcorrect = false;
                          });
                        } else {
                          setState(() {
                            ispasswordcorrect = true;
                          });
                        }
                        return null;
                      },
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
                      child: TextFormField(
                        controller: lastname,
                        decoration: const InputDecoration(
                          labelText: '성',
                          hintText: 'Last Name',
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ), // 내부 패딩 조절
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 12, // 폰트 크기 조절
                            fontFamily: 'JetBrain',
                            fontWeight: FontWeight.w300,
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
                      child: TextFormField(
                        controller: firstname,
                        decoration: const InputDecoration(
                          labelText: '이름',
                          hintText: 'First Name',
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ), // 내부 패딩 조절
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 12, // 폰트 크기 조절
                            fontFamily: 'JetBrain',
                            fontWeight: FontWeight.w300,
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
                        onPressed: () async {
                          try {
                            UserCredential credential =
                                await auth.createUserWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text);
                            credential.user?.updateDisplayName(
                                lastname.text + firstname.text);
                            if (credential.user != null) {
                              user = credential.user;
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('server error')));
                            }
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                          } on FirebaseAuthException catch (error) {
                            String? errorCode;
                            switch (error.code) {
                              case "email-already-in-use":
                                errorCode = error.code;
                                break;
                              case "invalid-email":
                                errorCode = error.code;
                                break;
                              case "weak-password":
                                errorCode = error.code;
                                break;
                              case "operation-not-allowed":
                                errorCode = error.code;
                                break;
                              default:
                                errorCode = null;
                            }
                            if (errorCode != null) {}
                          }
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffa9d8ab)),
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
                        onPressed: () async {
                          final googleSignIn = GoogleSignIn();
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
      ),
    );
  }
}
