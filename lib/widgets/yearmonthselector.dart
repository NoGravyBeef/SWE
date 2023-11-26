import 'package:flutter/material.dart';

class YearMonthSelector extends StatefulWidget {
  final Function(int year, int month) onYearMonthSelected;

  const YearMonthSelector({Key? key, required this.onYearMonthSelected})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _YearMonthSelectorState createState() => _YearMonthSelectorState();
}

class _YearMonthSelectorState extends State<YearMonthSelector> {
  int? selectedYear;
  int? selectedMonth;
  final List<int> years = List.generate(100, (index) => 1950 + index);
  final List<String> months = List.generate(12, (index) => "${index + 1}월");

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: years.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${years[index]}년"),
                onTap: () {
                  setState(() {
                    selectedYear = years[index];
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
          child: ListView.builder(
            itemCount: months.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(months[index]),
                onTap: () {
                  setState(() {
                    selectedMonth = index + 1;
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
