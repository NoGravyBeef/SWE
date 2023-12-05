import 'package:flutter/material.dart';

// 년도와 월을 선택하는 커스텀 위젯입니다.
class YearMonthSelector extends StatefulWidget {
  // 년도와 월이 선택되었을 때 호출될 콜백 함수입니다.
  final Function(int year, int month) onYearMonthSelected;

  // 필수 콜백 함수를 포함한 생성자입니다.
  const YearMonthSelector({super.key, required this.onYearMonthSelected});

  @override
  // 위젯의 상태를 생성합니다.
  // ignore: library_private_types_in_public_api
  _YearMonthSelectorState createState() => _YearMonthSelectorState();
}

class _YearMonthSelectorState extends State<YearMonthSelector> {
  // 선택된 년도와 월을 저장할 변수입니다.
  int? selectedYear;
  int? selectedMonth;

  // 1950년부터 100년간의 년도 목록을 생성합니다.
  final List<int> years = List.generate(100, (index) => 1950 + index);

  // 12개월의 목록을 생성합니다.
  final List<String> months = List.generate(12, (index) => "${index + 1}월");

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          // 년도 선택을 위한 ListView를 구성합니다.
          child: ListView.builder(
            itemCount: years.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  "${years[index]}년",
                  style: TextStyle(
                      color: selectedYear == years[index]
                          ? Colors.amber
                          : Colors.black),
                ),
                onTap: () {
                  setState(() {
                    selectedYear = years[index];
                    // 월도 선택되었다면 콜백 함수를 호출합니다.
                    if (selectedMonth != null) {
                      widget.onYearMonthSelected(selectedYear!, selectedMonth!);
                    }
                  });
                },
              );
            },
          ),
        ),
        Expanded(
          // 월 선택을 위한 ListView를 구성합니다.
          child: ListView.builder(
            itemCount: months.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  months[index],
                  style: TextStyle(
                      color: selectedMonth == index + 1
                          ? Colors.amber
                          : Colors.black),
                ),
                onTap: () {
                  setState(() {
                    selectedMonth = index + 1;
                    // 년도도 선택되었다면 콜백 함수를 호출합니다.
                    if (selectedYear != null) {
                      widget.onYearMonthSelected(selectedYear!, selectedMonth!);
                    }
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
