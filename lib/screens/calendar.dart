import 'package:calendar/provider/test_provider.dart';
import 'package:calendar/widgets/test.dart';
import 'package:calendar/screens/Memo_page.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
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
  late testProvider _provider;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('ko_KR', null);
  }

  // Map<DateTime, List<Event>> events = {
  //   DateTime.utc(2023, 12, 6): [Event('title'), Event('titme2')],
  //   DateTime.utc(2023, 12, 25): [Event('title3')],
  // };

  // List<Event> _getEventsForDay(DateTime day) {
  //   return events[day] ?? [];
  // }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _provider = Provider.of<testProvider>(context, listen: false);
    const defaultTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 21,
      fontWeight: FontWeight.w700,
    );

    StartingDayOfWeek startingDayOfWeek = StartingDayOfWeek.sunday;
    switch (Provider.of<testProvider>(context).changeStartDay) {
      case 1:
        startingDayOfWeek = StartingDayOfWeek.monday;
        break;
      case 2:
        startingDayOfWeek = StartingDayOfWeek.tuesday;
        break;
      case 3:
        startingDayOfWeek = StartingDayOfWeek.wednesday;
        break;
      case 4:
        startingDayOfWeek = StartingDayOfWeek.thursday;
        break;
      case 5:
        startingDayOfWeek = StartingDayOfWeek.friday;
        break;
      case 6:
        startingDayOfWeek = StartingDayOfWeek.saturday;
        break;
      case 7:
        startingDayOfWeek = StartingDayOfWeek.sunday;
        break;
    }

    var selectHoliday = DateTime.sunday;

    if (Provider.of<testProvider>(context).selectHoliday[0] == true) {
      selectHoliday = DateTime.monday;
    } else if (Provider.of<testProvider>(context).selectHoliday[1] == true) {
      selectHoliday = DateTime.tuesday;
    } else if (Provider.of<testProvider>(context).selectHoliday[2] == true) {
      selectHoliday = DateTime.wednesday;
    } else if (Provider.of<testProvider>(context).selectHoliday[3] == true) {
      selectHoliday = DateTime.thursday;
    } else if (Provider.of<testProvider>(context).selectHoliday[4] == true) {
      selectHoliday = DateTime.friday;
    } else if (Provider.of<testProvider>(context).selectHoliday[5] == true) {
      selectHoliday = DateTime.saturday;
    } else if (Provider.of<testProvider>(context).selectHoliday[6] == true) {
      selectHoliday = DateTime.sunday;
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/calendar image.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            screenSize.width * 0.1,
            screenSize.height * 0.06,
            screenSize.width * 0.1,
            screenSize.height * 0.1,
          ),
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
                            style: TextStyle(
                              fontSize: screenSize.height * 0.04,
                              fontFamily: "JetBrainsMono-Regular",
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              decoration: TextDecoration.none,
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
                SizedBox(height: screenSize.height * 0.02),
                TableCalendar(
//                  eventLoader: _getEventsForDay,
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      this.selectedDay = selectedDay;
                      this.focusedDay = focusedDay;
                      print(selectedDay);
                      _provider.change_record_day(selectedDay);
                    });
                    // 메모 화면으로 이동
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Memo_Page(date: selectedDay),
                      ),
                    );
                  },

                  // 휴일 날짜 지정
                  weekendDays: [selectHoliday],
                  // 시작요일 변경 부분
                  startingDayOfWeek: startingDayOfWeek,
                  //locale: 'ko_KR',
                  focusedDay: focusedDay,
                  firstDay: DateTime(1800),
                  lastDay: DateTime(3000),
                  // firstDay: DateTime.utc(1950, 1, 1),
                  // lastDay: DateTime.utc(2050, 12, 31),
                  daysOfWeekHeight: screenSize.height * 0.1,

                  headerVisible: false,

                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: screenSize.height * 0.025,
                      fontFamily: 'JetBrainsMono-Regular.ttf',
                    ),
                    weekendStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: screenSize.height * 0.025,
                      color: Colors.black,
                      fontFamily: 'JetBrainsMono-Regular.ttf',
                    ),
                  ),

                  calendarStyle: CalendarStyle(
                      isTodayHighlighted: false,
                      defaultDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.indigo[50],
                      ),
                      weekendDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Provider.of<testProvider>(context)
                            .holidayBackgroundColor,
                      ),
                      weekendTextStyle: TextStyle(
                        fontSize: screenSize.height * 0.025,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                      selectedDecoration: BoxDecoration(
                        color:
                            Provider.of<testProvider>(context).backGroundColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      outsideDecoration:
                          const BoxDecoration(shape: BoxShape.rectangle),
                      outsideTextStyle: TextStyle(
                        fontSize: screenSize.height * 0.025,
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                      ),
                      defaultTextStyle: TextStyle(
                        fontSize: screenSize.height * 0.025,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                      //weekendTextStyle: defaultTextStyle,
                      selectedTextStyle: defaultTextStyle.copyWith(
                        fontSize: screenSize.height * 0.025,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                      markerSize: 7,
                      markerDecoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle)),

                  selectedDayPredicate: (DateTime date) {
                    return date.year == selectedDay.year &&
                        date.month == selectedDay.month &&
                        date.day == selectedDay.day;
                  },
                  calendarBuilders:
                      CalendarBuilders(dowBuilder: (context, day) {
                    switch (day.weekday) {
                      case 1:
                        return Center(
                          child: Text(
                            '월',
                            style: TextStyle(
                              fontSize: screenSize.height * 0.025,
                              color: (Provider.of<testProvider>(context)
                                      .selectHoliday[0])
                                  ? Provider.of<testProvider>(context)
                                      .holidayColor
                                  : Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        );
                      case 2:
                        return Center(
                          child: Text(
                            '화',
                            style: TextStyle(
                              fontSize: screenSize.height * 0.025,
                              color: (Provider.of<testProvider>(context)
                                      .selectHoliday[1])
                                  ? Provider.of<testProvider>(context)
                                      .holidayColor
                                  : Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        );
                      case 3:
                        return Center(
                          child: Text(
                            '수',
                            style: TextStyle(
                              fontSize: screenSize.height * 0.025,
                              color: (Provider.of<testProvider>(context)
                                      .selectHoliday[2])
                                  ? Provider.of<testProvider>(context)
                                      .holidayColor
                                  : Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        );
                      case 4:
                        return Center(
                          child: Text(
                            '목',
                            style: TextStyle(
                              fontSize: screenSize.height * 0.025,
                              color: (Provider.of<testProvider>(context)
                                      .selectHoliday[3])
                                  ? Provider.of<testProvider>(context)
                                      .holidayColor
                                  : Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        );
                      case 5:
                        return Center(
                          child: Text(
                            '금',
                            style: TextStyle(
                              fontSize: screenSize.height * 0.025,
                              color: (Provider.of<testProvider>(context)
                                      .selectHoliday[4])
                                  ? Provider.of<testProvider>(context)
                                      .holidayColor
                                  : Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        );
                      case 6:
                        return Center(
                          child: Text(
                            '토',
                            style: TextStyle(
                              fontSize: screenSize.height * 0.025,
                              color: (Provider.of<testProvider>(context)
                                      .selectHoliday[5])
                                  ? Provider.of<testProvider>(context)
                                      .holidayColor
                                  : Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        );
                      case 7:
                        return Center(
                          child: Text(
                            '일',
                            style: TextStyle(
                              fontSize: screenSize.height * 0.025,
                              color: (Provider.of<testProvider>(context)
                                      .selectHoliday[6])
                                  ? Provider.of<testProvider>(context)
                                      .holidayColor
                                  : Colors.black,
                              decoration: TextDecoration.none,
                            ),
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
                Future.delayed(const Duration(milliseconds: 500), () {
                  Navigator.of(context).pop();
                  setState(() {
                    focusedDay = DateTime(year, month);
                  });
                });
              },
            ),
          ),
        );
      },
    );
  }
}

class Event {
  String title;
  Event(this.title);
}
