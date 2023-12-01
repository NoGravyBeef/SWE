import 'package:calendar/provider/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class test_change extends StatefulWidget {
  const test_change({
    super.key,
  });
  @override
  State<test_change> createState() => _test_changeState();
}

class _test_changeState extends State<test_change> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        height: 300,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('data'),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Provider.of<testProvider>(context).backGroundColor),
              )
            ],
          ),
        ));
  }
}
