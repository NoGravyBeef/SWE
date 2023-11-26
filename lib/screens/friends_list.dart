import 'package:flutter/material.dart';
import 'package:calendar/widgets/list_elements.dart';

class Friends_list extends StatefulWidget {
  const Friends_list({super.key});

  @override
  State<Friends_list> createState() => _Friends_list();
}

class _Friends_list extends State<Friends_list> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg_friends.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * 0.023,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '친구 목록',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.person_4_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            SizedBox(
              width: screenSize.width * 0.93,
              height: screenSize.height * 0.7,
              child: ListView.builder(
                itemCount: 40, //친구 수
                itemBuilder: (BuildContext context, int idx) {
                  return const List_elements();
                },
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.27,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.delete,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.015,
                            ),
                            const Text(
                              '친구 관리',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.041,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.017,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.27,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.015,
                            ),
                            const Text(
                              '친구 신청 목록',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.041,
                    ),
                  ],
                ),
                /*SizedBox(
                  height: screenSize.height * 0.017,
                ),*/
              ],
            )
          ],
        ),
      ),
    );
  }
}
