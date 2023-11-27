import 'notescreen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/yearmonthselector.dart';
import 'package:calendar/widgets/calendar_menu.dart';

// 캘린더 화면을 위한 StatefulWidget 클래스
class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

// 이벤트를 저장할 dDayEvents 맵
Map<DateTime, String> dDayEvents = {};

class _CalendarScreenState extends State<CalendarScreen> {
  // 현재 선택된 날짜와 초점이 맞춰진 날짜
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // 디바이스 화면 크기를 가져온다
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
                    right: screenWidth * 0.07), // 화면 너비의 7%로 오른쪽 패딩 조정
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    // 메뉴 버튼 클릭시 수행할 작업
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              calendar_menu(date: selectedDay)),
                    );
                  },
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // 달력의 상단에 있는 년도와 월을 선택하는 부분
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: () {
                        setState(() {
                          // 왼쪽 화살표를 누르면 이전 달로 이동
                          focusedDay =
                              DateTime(focusedDay.year, focusedDay.month - 1);
                        });
                      },
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: _showYearMonthSelector,
                      // 년도와 월을 표시하는 부분, 클릭 시 선택 다이얼로그 표시
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Center(
                          child: Text(
                            // 현재 포커스된 날짜를 '년 월' 형식으로 표시
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
                          // 오른쪽 화살표를 누르면 다음 달로 이동
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
                // TableCalendar 위젯을 사용하여 달력 표시
                TableCalendar(
                  eventLoader: (day) {
                    // 특정 날짜에 이벤트가 있는지 확인
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
                      // 날짜 선택 시 상태 업데이트
                      this.selectedDay = selectedDay;
                      this.focusedDay = focusedDay;
                    });
                    // NoteScreen으로 이동
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NoteScreen(date: selectedDay)),
                    );
                  },
                  selectedDayPredicate: (day) {
                    // 선택된 날짜와 일치하는지 확인
                    return isSameDay(selectedDay, day);
                  },
                  headerVisible: false,
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    // 주중 및 주말 스타일 설정
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
                    // 달력의 기본 스타일 설정
                    defaultTextStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'JetBrainsMono-Regular.ttf',
                    ),
                    weekendTextStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'JetBrainsMono-Regular.ttf',
                    ),
                  ),
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      // 기본 날짜 셀 빌더
                      return Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                        child: Center(child: Text('${day.day}')),
                      );
                    },
                    markerBuilder: (context, date, events) {
                      // 이벤트 마커 빌더
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
    // 년도와 월을 선택하는 다이얼로그를 표시하는 함수
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
                  // 선택된 년도와 월로 초점 날짜를 업데이트
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
