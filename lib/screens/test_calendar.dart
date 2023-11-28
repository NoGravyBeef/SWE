import 'package:calendar/screens/Memo_page.dart';
import 'package:calendar/widgets/test.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/yearmonthselector.dart';
import 'package:intl/date_symbol_data_local.dart';

class Calendar extends StatefulWidget {
  // 기본 생성자
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

// 날짜와 이벤트를 매핑하는 맵
Map<DateTime, String> dDayEvents = {};

class _CalendarState extends State<Calendar> {
  // 선택된 날짜와 포커스된 날짜를 저장하는 변수
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    // 날짜 형식을 한국어로 초기화
    initializeDateFormatting('ko_KR', null);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // 박스 디자인을 위한 기본 설정
    final defaultBoxDeco = BoxDecoration(
      borderRadius: BorderRadius.circular(6.0),
      color: Colors.grey[200],
    );

    // 텍스트 스타일 기본 설정
    const defaultTextStyle = TextStyle(
      color: Colors.amber,
      fontSize: 15,
      fontWeight: FontWeight.w700,
    );

    return Container(
      // 배경 이미지 설정
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
                // 사용자 정의 위젯
                test(),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            // 년도와 월을 선택하는 위젯
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 이전 달로 이동하는 버튼
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
                // 년도와 월을 표시하는 부분, 탭하면 선택기가 나타남
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
                // 다음 달로 이동하는 버튼
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
            // 달력 위젯
            TableCalendar(
              // 이벤트 로더: 특정 날짜에 이벤트가 있는지 확인
              eventLoader: (day) {
                if (dDayEvents.containsKey(day)) {
                  return [dDayEvents[day]!];
                }
                return [];
              },

              // 날짜 선택 시 동작
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

              // 로케일 설정
              locale: 'ko_KR',
              focusedDay: focusedDay,
              firstDay: DateTime(1800),
              lastDay: DateTime(3000),
              daysOfWeekHeight: 40,

              headerVisible: false,

              // 요일 스타일 설정
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

              // 달력 스타일 설정
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
                  selectedTextStyle:
                      defaultTextStyle.copyWith(color: Colors.amber)),
              // 선택된 날짜 판별 로직
              selectedDayPredicate: (DateTime date) {
                return date.year == selectedDay.year &&
                    date.month == selectedDay.month &&
                    date.day == selectedDay.day;
              },
            ),
          ],
        ),
      ),
    );
  }

  // 연도와 월을 선택하는 다이얼로그를 표시하는 함수
  void _showYearMonthSelector() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            width: double.maxFinite,
            // 사용자 정의 연도와 월 선택기 위젯
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
