/*
import 'package:calender/hyuk/page/setting_page.dart';
import 'package:calender/hyuk/widgets/Ddays_colors.dart';
import 'package:calender/hyuk/widgets/background_colors.dart';
import 'package:calender/hyuk/widgets/calendar_menu.dart';
import 'package:calender/hyuk/widgets/calendar_recode.dart';
import 'package:calender/hyuk/widgets/change_font_size.dart';
import 'package:calender/hyuk/widgets/font_colors.dart';
import 'package:calender/hyuk/widgets/select_fixdays.dart';
import 'package:calender/hyuk/widgets/setting_color.dart';
import 'package:calender/hyuk/widgets/setting_rows.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

void main() {
  runApp(const Calendar());
}

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  final bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: null,
          toolbarHeight: 70,
          title: const Text(
            "Settings",
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 3.0,
            ),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 90, 0),
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        //body: //const SwitchTest(),
        //    SettingColor(
        //  key: key,
        //),
        //     calendar_recode(
        //   key: key,
        // ),
        //     select_fixdays(
        //   key: key,
        // ),
        //font_colors(key: key),
        //background_colors(key: key),
        //Ddays_colors(key: key),
        //change_font_size(key: key),
        //calendar_menu(key: key),
      ),
    );
  }
}
*/
import 'package:calendar/screens/user_search_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calendar());
}

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserSearchScreen(),
    );
  }
}
