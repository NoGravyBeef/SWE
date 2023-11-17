import 'package:flutter/material.dart';

class change_font_size extends StatefulWidget {
  const change_font_size({super.key});

  @override
  State<change_font_size> createState() => _change_font_sizeState();
}

class _change_font_sizeState extends State<change_font_size> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 5),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xffc4c4c4)),
                  fixedSize: const MaterialStatePropertyAll(Size(60, 60)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ))),
              onPressed: () {},
              child: const Text(
                "T",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xffc4c4c4)),
                  fixedSize: const MaterialStatePropertyAll(Size(60, 60)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ))),
              onPressed: () {},
              child: const Text(
                "T",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xffc4c4c4)),
                  fixedSize: const MaterialStatePropertyAll(Size(60, 60)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ))),
              onPressed: () {},
              child: const Text(
                "T",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xffc4c4c4)),
                  fixedSize: const MaterialStatePropertyAll(Size(60, 60)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ))),
              onPressed: () {},
              child: const Text(
                "T",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )),
        ],
      ),
    );
  }
}
