import 'package:calendar/popup/change_background_color.dart';
import 'package:calendar/provider/test_provider.dart';
import 'package:calendar/screens/Memo_page.dart';
import 'package:calendar/screens/calendar.dart';
import 'package:calendar/screens/fmanage_list.dart';
import 'package:calendar/screens/login.dart';
import 'package:calendar/widgets/test_change.dart';
import 'package:flutter/material.dart';
import 'package:calendar/screens/friends_list.dart';
import 'package:calendar/screens/join_screen.dart';
//아래는 firebase 필수 코드임
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

final auth = FirebaseAuth.instance;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: testProvider(),
        child: const MaterialApp(
          home: Scaffold(
              backgroundColor: Color(0xffEFEFEF),
              body: Column(
                children: [Calendar()],
              )),
        ));
  }
}
