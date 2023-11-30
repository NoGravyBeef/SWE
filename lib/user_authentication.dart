import 'package:flutter/material.dart';

class UserAuthentication with ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void login(String username, String password) {
    // 로그인 로직 구현
    // 예를 들어, 서버에 요청을 보내고 응답을 확인하는 로직
    _isLoggedIn = true; // 로그인 성공 시
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
