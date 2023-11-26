import 'package:calendar/widgets/test.dart';
import 'notescreen.dart';
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

Map<DateTime, String> dDayEvents = {};

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
    final defaultBoxDeco = BoxDecoration(
      borderRadius: BorderRadius.circular(6.0),
      color: Colors.grey[200],
    );

    const defaultTextStyle = TextStyle(
      color: Colors.amber,
      fontSize: 15,
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
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                test(),
              ],
            ),
            const SizedBox(
              height: 50,
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

              locale: 'ko_KR',
              focusedDay: focusedDay,
              firstDay: DateTime(1800),
              lastDay: DateTime(3000),
              // firstDay: DateTime.utc(1950, 1, 1),
              // lastDay: DateTime.utc(2050, 12, 31),
              daysOfWeekHeight: 40,

              headerVisible: false,

              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: 'JetBrainsMono-Regular.ttf',
                ),
                weekendStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'JetBrainsMono-Regular.ttf',
                ),
              ),

              calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  defaultDecoration: defaultBoxDeco,
                  weekendDecoration: defaultBoxDeco,
                  weekendTextStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'JetBrainsMono-Regular.ttf',
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Colors.amber,
                      width: 1.0,
                    ),
                  ),
                  outsideDecoration:
                      const BoxDecoration(shape: BoxShape.rectangle),
                  defaultTextStyle: defaultTextStyle,
                  //weekendTextStyle: defaultTextStyle,
                  selectedTextStyle:
                      defaultTextStyle.copyWith(color: Colors.amber)),
              // onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
              //   setState(() {
              //     this.selectedDay = selectedDay;
              //     this.focusedDay = selectedDay;
              //   });
              // },
              selectedDayPredicate: (DateTime date) {
                return date.year == selectedDay.year &&
                    date.month == selectedDay.month &&
                    date.day == selectedDay.day;
              },
              // calendarBuilders: CalendarBuilders(
              //   defaultBuilder: (context, day, focusedDay) {
              //     return Padding(
              //       padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
              //       child: Center(child: Text('${day.day}')),
              //     );
              //   },
              // ),
            ),
          ],
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