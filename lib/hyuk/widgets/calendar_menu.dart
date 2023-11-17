import 'package:flutter/material.dart';

class calendar_menu extends StatefulWidget {
  const calendar_menu({super.key});

  @override
  State<calendar_menu> createState() => _calendar_menuState();
}

class _calendar_menuState extends State<calendar_menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 56,
                width: 300,
                decoration: const BoxDecoration(
                    color: Color(0xffADAAAA),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: const Row(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.settings,
                          size: 28,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "설정",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 56,
                width: 300,
                decoration: const BoxDecoration(
                  color: Color(0xffc4c4c4),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: null, icon: Icon(Icons.list, size: 30)),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "친구 목록",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 56,
                width: 300,
                decoration: const BoxDecoration(
                    color: Color(0xffADAAAA),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: const Row(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.person_search_rounded,
                          size: 30,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "친구 검색",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
