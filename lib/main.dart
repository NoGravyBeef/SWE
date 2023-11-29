import 'package:flutter/material.dart';
import 'package:calendar/screens/join_screen.dart';
//아래는 firebase 필수 코드임
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//provider와 shared preferences
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  //이것도 firebase 필수 코드임.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var test_change_color = Colors.white;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: JoinScreen(),
      ),
    );
  }
}
