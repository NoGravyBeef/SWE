import 'package:calendar/widgets/test.dart';
import 'package:calendar/screens/Memo_page.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/yearmonthselector.dart';
import 'package:intl/date_symbol_data_local.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('ko_KR', null);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    const defaultTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 21,
      fontWeight: FontWeight.w700,
    );

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/calendar image.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  test(),
                ],
              ),
              SizedBox(
                height: screenSize.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_left),
                    onPressed: () {
                      setState(() {
                        focusedDay =
                            DateTime(focusedDay.year, focusedDay.month - 1);
                      });
                    },
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: _showYearMonthSelector,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: (screenSize.width * 0.008298) * 2),
                      child: Center(
                        child: Text(
                          DateFormat.yMMMM('ko_KR').format(focusedDay),
                          style: const TextStyle(
                            fontSize: 25.0,
                            fontFamily: "JetBrainsMono-Regular",
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: () {
                      setState(() {
                        focusedDay =
                            DateTime(focusedDay.year, focusedDay.month + 1);
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: (52 / screenSize.height) * screenSize.height),
              const DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.5,
                dashLength: 7.0,
                dashColor: Colors.grey,
                dashRadius: 0.0,
              ),
              SizedBox(height: (70 / screenSize.height) * screenSize.height),
              TableCalendar(
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    this.selectedDay = selectedDay;
                    this.focusedDay = focusedDay;
                  });
                  // 메모 화면으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Memo_Page(date: selectedDay)),
                  );
                },

                //locale: 'ko_KR',
                focusedDay: focusedDay,
                firstDay: DateTime(1800),
                lastDay: DateTime(3000),
                // firstDay: DateTime.utc(1950, 1, 1),
                // lastDay: DateTime.utc(2050, 12, 31),
                daysOfWeekHeight: 40,

                headerVisible: false,

                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    fontFamily: 'JetBrainsMono-Regular.ttf',
                  ),
                  weekendStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'JetBrainsMono-Regular.ttf',
                  ),
                ),

                calendarStyle: CalendarStyle(
                    isTodayHighlighted: true,
                    defaultDecoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    weekendDecoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    weekendTextStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'JetBrainsMono-Regular.ttf',
                    ),
                    selectedDecoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 178, 250),
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 214, 178, 250),
                        width: 1.0,
                      ),
                    ),
                    outsideDecoration:
                        const BoxDecoration(shape: BoxShape.rectangle),
                    defaultTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w900,
                    ),
                    //weekendTextStyle: defaultTextStyle,
                    selectedTextStyle:
                        defaultTextStyle.copyWith(color: Colors.black)),

                selectedDayPredicate: (DateTime date) {
                  return date.year == selectedDay.year &&
                      date.month == selectedDay.month &&
                      date.day == selectedDay.day;
                },
                calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
                  switch (day.weekday) {
                    case 1:
                      return const Center(
                        child: Text('월'),
                      );
                    case 2:
                      return const Center(
                        child: Text('화'),
                      );
                    case 3:
                      return const Center(
                        child: Text('수'),
                      );
                    case 4:
                      return const Center(
                        child: Text('목'),
                      );
                    case 5:
                      return const Center(
                        child: Text('금'),
                      );
                    case 6:
                      return const Center(
                        child: Text('토'),
                      );
                    case 7:
                      return const Center(
                        child: Text(
                          '일',
                        ),
                      );
                  }
                  return null;
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showYearMonthSelector() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            width: double.maxFinite,
            child: YearMonthSelector(
              onYearMonthSelected: (int year, int month) {
                Navigator.of(context).pop();
                setState(() {
                  focusedDay = DateTime(year, month);
                });
              },
            ),
          ),
        );
      },
    );
  }
}
