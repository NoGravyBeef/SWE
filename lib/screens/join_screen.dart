import 'package:flutter/material.dart';
import 'package:calendar/widgets/join_text_field.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  void pressed() {}

  @override
  Widget build(BuildContext context) {
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 180,
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
              Row(
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(width: 50),
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
                          labelText: '아이디', hintText: 'Enter the ID'),
                    ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(width: 50),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(width: 50),
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
                          labelText: '비밀번호', hintText: 'Enter the password'),
                    ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(width: 50),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const Flexible(
                    flex: 1,
                    child: SizedBox(width: 50),
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
                          labelText: '비밀번호 확인', hintText: 'Check the password'),
                    ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(width: 50),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const Flexible(
                    flex: 4,
                    child: SizedBox(width: 50),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                          ),
                        ),
                        child: const JoinTextField(
                            labelText: '성', hintText: 'Last Name')),
                  ),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(width: 50),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                          ),
                        ),
                        child: const JoinTextField(
                            labelText: '이름', hintText: 'First Name')),
                  ),
                  const Flexible(
                    flex: 4,
                    child: SizedBox(width: 50),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: SizedBox(width: 50),
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
                  const Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: SizedBox(width: 50),
                  ),
                ],
              ),
              SizedBox(
                height: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      flex: 2,
                      child: SizedBox(width: 50),
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
                    const Flexible(
                      flex: 2,
                      child: SizedBox(width: 50),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
