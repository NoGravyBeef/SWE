import 'package:calendor_project/widgets/calendar_menu.dart';
import 'package:calendor_project/popup/change_background_color.dart';
import 'package:calendor_project/popup/change_ddays_color.dart';
import 'package:calendor_project/popup/change_font_color.dart';
import 'package:calendor_project/popup/change_font_size.dart';
import 'package:calendor_project/widgets/fixdays.dart';
import 'package:calendor_project/screens/settings.dart';
import 'package:calendor_project/widgets/test.dart';
import 'package:calendor_project/widgets/test_change.dart';
import 'package:calendor_project/widgets/test_record.dart';
import 'package:flutter/material.dart';

void main() {
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
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xffEFEFEF),
            body: //settings(),
                //AudioApp(),
                Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
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
                RecordingWidget()
                //settings()
              ],
            )));
  }
}
