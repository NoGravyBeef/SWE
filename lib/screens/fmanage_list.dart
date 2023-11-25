import 'package:flutter/material.dart';
import 'package:seproject/widgets/flist_elements.dart';

class FManage_list extends StatefulWidget {
  const FManage_list({super.key});

  @override
  State<FManage_list> createState() => _Friends_list();
}

class _Friends_list extends State<FManage_list> {
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
                  '친구 관리',
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
              height: screenSize.height * 0.05,
            ),
            Container(
              width: screenSize.width * 0.93,
              height: screenSize.height * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(0.5)),
              child: ListView.builder(
                itemCount: 40, //친구 수
                itemBuilder: (BuildContext context, int idx) {
                  return const FList_elements();
                },
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.029,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.21,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.delete,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.004,
                            ),
                            const Text(
                              '친구 삭제',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.023,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
