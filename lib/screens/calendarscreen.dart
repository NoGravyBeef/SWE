import 'package:calendar/widgets/test.dart';

import 'notescreen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/yearmonthselector.dart';
import 'package:intl/date_symbol_data_local.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});
  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

Map<DateTime, String> dDayEvents = {};

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('ko_KR', null);
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery를 이용해 디바이스의 화면 크기를 가져옵니다.
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/calendar image.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    right: screenWidth * 0.07), // 화면 너비의 5%로 padding 조정
                child: const test(),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
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
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                const SizedBox(height: 52),
                const DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.5,
                  dashLength: 7.0,
                  dashColor: Colors.grey,
                  dashRadius: 0.0,
                ),
                const SizedBox(height: 70),
                TableCalendar(
                  eventLoader: (day) {
                    if (dDayEvents.containsKey(day)) {
                      return [dDayEvents[day]!];
                    }
                    return [];
                  },
                  locale: 'ko_KR',
                  firstDay: DateTime.utc(1950, 1, 1),
                  lastDay: DateTime.utc(2050, 12, 31),
                  focusedDay: focusedDay,
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      this.selectedDay = selectedDay;
                      this.focusedDay = focusedDay;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NoteScreen(date: selectedDay)),
                    );
                  },
                  selectedDayPredicate: (day) {
                    return isSameDay(selectedDay, day);
                  },
                  headerVisible: false,
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontFamily: 'JetBrainsMono-Regular.ttf',
                    ),
                    weekendStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.black,
                      fontFamily: 'JetBrainsMono-Regular.ttf',
                    ),
                  ),
                  calendarStyle: const CalendarStyle(
                      weekendTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'JetBrainsMono-Regular.ttf',
                      ),
                      defaultTextStyle:
                          TextStyle(fontSize: 20, color: Colors.amber)),
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                        child: Center(child: Text('${day.day}')),
                      );
                    },
                    markerBuilder: (context, date, events) {
                      if (events.isNotEmpty) {
                        return Positioned(
                          bottom: 1.0,
                          child: Text(
                            events[0] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 169, 104, 182)),
                          ),
                        );
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
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
