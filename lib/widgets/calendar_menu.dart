import 'package:calendor_project/screens/settings.dart';
import 'package:flutter/material.dart';

class calander_menu extends StatefulWidget {
  const calander_menu({super.key});

  @override
  State<calander_menu> createState() => _calander_menuState();
}

class _calander_menuState extends State<calander_menu> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.657,
      height: screenSize.height * 0.17,
      child: Column(
        children: [
          Container(
            width: screenSize.width * 0.657,
            height: (screenSize.height * 0.17) / 3,
            decoration: const BoxDecoration(
                color: Color(0xffADAAAA),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const settings()));
                    },
                    icon: const Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.black45,
                    )),
                const Text(
                  '설정',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    //fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            width: screenSize.width * 0.657,
            height: (screenSize.height * 0.17) / 3,
            decoration: const BoxDecoration(color: Color(0xffC4C4C4)),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.black45,
                    )),
                const Text(
                  '친구 목록',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    //fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            width: screenSize.width * 0.657,
            height: (screenSize.height * 0.17) / 3,
            decoration: const BoxDecoration(
                color: Color(0xffADAAAA),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_search_rounded,
                      size: 30,
                      color: Colors.black45,
                    )),
                const Text(
                  '유저 검색',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
