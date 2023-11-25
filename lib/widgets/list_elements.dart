import 'package:flutter/material.dart';

class List_elements extends StatelessWidget {
  final String fName;
  final Color bgColor;
  final Color textColor;

  const List_elements(
      {super.key,
      this.fName = '응애',
      this.bgColor = Colors.white,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.023,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenSize.width * 0.83,
              height: screenSize.height * 0.046,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    fName,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.38,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffd8d7e7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      '일정 보기',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 200,
                  ),),*/
          ],
        ),
      ],
    );
  }
}
