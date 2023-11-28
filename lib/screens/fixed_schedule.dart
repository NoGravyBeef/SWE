import 'package:flutter/material.dart';
import 'package:calendar/widgets/fixedschedule_row.dart';

//d
class Fixed_Schedules extends StatefulWidget {
  const Fixed_Schedules({super.key});

  @override
  State<Fixed_Schedules> createState() => _Fixed_SchedulesState();
}

class _Fixed_SchedulesState extends State<Fixed_Schedules> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg_fSchedule.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.041),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height * 0.046,
              ),
              const FixedSchedule_row(),
              const FixedSchedule_row(),
              const FixedSchedule_row(),
              const FixedSchedule_row(),
              const FixedSchedule_row(),
              const FixedSchedule_row(),
              const FixedSchedule_row(),
              const FixedSchedule_row(),
              const FixedSchedule_row(),
              SizedBox(
                height: screenSize.height * 0.046,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.format_underline)),
                  SizedBox(
                    width: screenSize.width * 0.021,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Icon(Icons.format_size)),
                  SizedBox(
                    width: screenSize.width * 0.021,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.format_color_fill)),
                ],
              ),
              SizedBox(
                height: screenSize.height * 0.058,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
