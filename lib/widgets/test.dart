import 'package:calendor_project/widgets/calendar_menu.dart';
import 'package:calendor_project/screens/settings.dart';
import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({
    super.key,
  });
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      icon: const Icon(
        Icons.menu,
        size: 30,
        color: Colors.black,
      ),
      position: PopupMenuPosition.under,
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.settings,
                  color: Colors.black45,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenSize.width * 0.02,
                      right: screenSize.width * 0.082),
                  child: const Text(
                    '설정',
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const settings()));
            },
          ),
          PopupMenuItem(
            child: Row(
              children: [
                const Icon(Icons.list, color: Colors.black45),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenSize.width * 0.02,
                  ),
                  child: const Text('친구 목록'),
                )
              ],
            ),
            onTap: () {},
          ),
          PopupMenuItem(
            child: Row(
              children: [
                const Icon(
                  Icons.person_search_rounded,
                  color: Colors.black45,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenSize.width * 0.02,
                  ),
                  child: const Text('유저 검색'),
                )
              ],
            ),
            onTap: () {},
          ),
        ];
      },
    );
  }
}