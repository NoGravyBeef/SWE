import 'package:flutter/material.dart';

class FList_elements extends StatefulWidget {
  final String fName;
  final Color bgColor;
  final Color textColor;

  const FList_elements({
    super.key,
    this.fName = '응애d',
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  State<FList_elements> createState() => _FList_elementsState();
}

class _FList_elementsState extends State<FList_elements> {
  var isChecked = false;

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
                color: widget.bgColor,
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
                    widget.fName,
                    style: TextStyle(
                      color: widget.textColor,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: screenSize.height * 0.38,
                  ),
                  Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      })
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
