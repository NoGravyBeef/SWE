import 'package:calendar/screens/join_screen.dart';
import 'package:flutter/material.dart';
import 'package:calendar/screens/calendar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// 로그인 페이지를 위한 StatefulWidget 클래스
var user;
final auth = FirebaseAuth.instance;
String message = '올바른 양식 입력하세요';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // 로그인 페이지의 상태를 생성
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 사용자 이름과 비밀번호를 위한 텍스트 컨트롤러
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            'assets/first_background.webp', // 배경 이미지 경로
            fit: BoxFit.cover, // 이미지를 화면에 꽉 차게 표시
            width: double.infinity,
            height: double.infinity,
          ),

          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
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
                          child: TextFormField(
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                      onPressed: () async {
                        try {
                          UserCredential credential =
                              await auth.signInWithEmailAndPassword(
                                  email: _usernameController.text,
                                  password: _passwordController.text);
                          if (credential.user != null) {
                            user = credential.user;
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('server error')));
                          }
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Calendar()));
                        } on FirebaseAuthException catch (error) {
                          String? errorCode;
                          print(error.code);
                          switch (error.code) {
                            case "invalid-email":
                              errorCode = error.code;
                              message = '이메일 양식이 올바르지 않습니다.';
                              break;
                            case "user-disabled":
                              errorCode = error.code;
                              break;
                            case "user-not-found":
                              errorCode = error.code;
                              break;
                            case "wrong-password":
                              errorCode = error.code;
                              break;
                            case "invalid-credential":
                              errorCode = error.code;
                              message = '아이디나 비밀번호를 확인해주세요!';
                              break;
                            default:
                              errorCode = null;
                          }
                          if (errorCode != null) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(message)));
                          }
                        }
                      }, // 로그인 버튼 클릭 시 수행할 동작
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 219, 217, 232)),
                        fixedSize:
                            MaterialStateProperty.all<Size>(const Size(85, 20)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                const SizedBox(height: 30.0),

                // 구글 로그인 버튼
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        signInWithGoogle();
                      }, // 구글 로그인 버튼 클릭 시 수행할 동작
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 255, 255, 255)),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(290, 47)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/google_logo.png'),
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
          ),
        ],
      ),
    );
  }

  /*void _login() {
    final userAuth = Provider.of<UserAuthentication>(context, listen: false);
    if (_usernameController.text == "올바른아이디" &&
        _passwordController.text == "올바른비밀번호") {
      userAuth.login(_usernameController.text, _passwordController.text);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Calendar()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('ID와 Password를 다시 확인해주세요.'),
        ),
      );
    }
    Consumer<UserAuthentication>(
      builder: (context, userAuth, child) {
        if (userAuth.isLoggedIn) {
          return const Calendar(); // 로그인 시 보여줄 화면
        } else {
          return const LoginPage(); // 로그아웃 시 보여줄 화면
        }
      },
    );
  }*/

  void _join() {
    // 회원가입창으로 이동
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const JoinScreen()),
    );
  }

  Future<void> navigateToCalendar() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Calendar()));
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    await navigateToCalendar();
    return userCredential;
  }

  void googleSignOut() async {
    await GoogleSignIn().signOut();
  }
}
