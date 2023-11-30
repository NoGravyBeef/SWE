/*
import 'package:calendar/screens/test_calendar.dart';
import 'package:calendar/widgets/calendar_menu.dart';
import 'package:calendar/popup/change_background_color.dart';
import 'package:calendar/popup/change_ddays_color.dart';
import 'package:calendar/popup/change_font_color.dart';
import 'package:calendar/popup/change_font_size.dart';
import 'package:calendar/widgets/fixdays.dart';
import 'package:calendar/screens/settings.dart';
import 'package:calendar/widgets/test.dart';
import 'package:calendar/widgets/test_change.dart';
import 'package:calendar/widgets/test_record.dart';
import 'package:calendar/widgets/test_record2.dart';
import 'package:flutter/material.dart';

import 'package:calendar/screens/friends_list.dart';

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
  //var test_change_color = Colors.white;

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    return const MaterialApp(home: Calendar()
        /*Scaffold(
            backgroundColor: Color(0xffEFEFEF),
            body: //settings(),
                //AudioApp(),
                Column(
              children: [
                SizedBox(
                  height: 50,
                ),*/
        // IconButton(
        //     onPressed: () {
        //       showDialog(
        //           barrierDismissible: true,
        //           context: context,
        //           builder: (context) {
        //             return const AlertDialog(
        //               content: calander_menu(),
        //             );
        //           });
        //     },
        //     icon: const Icon(
        //       Icons.menu,
        //       size: 45,
        //     )),
        //calander_menu(),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     test(),
        //   ],
        // ),
        // Text('$screenSize.width'),
        // Text('$screenSize.height'),
        // change_font_color(),
        // SizedBox(
        //   height: 50,
        // ),
        // change_background_color(),
        // SizedBox(
        //   height: 50,
        // ),
        // change_ddays_color(),
        // SizedBox(
        //   height: 50,
        // ),
        //change_font_size()
        //RecordingWidget()
        //settings()
        //],
        );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_authentication.dart'; // 모델 import
import 'package:calendar/screens/login.dart'; // 로그인 페이지 import

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserAuthentication(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login with Provider',
      home: LoginPage(),
    );
  }
}
