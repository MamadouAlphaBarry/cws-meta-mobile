import 'package:cws_meta_mbile/widgets/cws.bottom.navigation.widget.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AddConsuntivazione extends StatefulWidget {
  const AddConsuntivazione({super.key});

  @override
  State<AddConsuntivazione> createState() => _AddConsuntivazioneState();
}

class _AddConsuntivazioneState extends State<AddConsuntivazione> {
  dynamic _focusedDay;
  DateTime _selectedDay = DateTime.now();
  late final Map<String, dynamic> data;
  final DateTime _disabledDate = DateTime.parse("2023-08-10");

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
  }

  bool _isWeekend(DateTime day) {
    return day.weekday == DateTime.saturday || day.weekday == DateTime.sunday;
  }

  void _showSelectedDateDialog() {
    int minuteValue = 0;
    int overtimeValue = 0;
    int oreViaggioValue = 0;
    bool ismartValue = false;
    String tipoValue = 'Normal'; // Set the default value to 'Normal'
    String noteText = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Dialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                            'Selected Date: ${_selectedDay.toString().substring(0, 10)}'),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Minutes'),
                        onChanged: (value) {
                          minuteValue = int.parse(value);
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:
                            const InputDecoration(labelText: 'Overtime'),
                        onChanged: (value) {
                          overtimeValue = int.parse(value);
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:
                            const InputDecoration(labelText: 'Ore Viaggio'),
                        onChanged: (value) {
                          oreViaggioValue = int.parse(value);
                        },
                      ),
                      DropdownButtonFormField<String>(
                        value: tipoValue,
                        decoration: const InputDecoration(labelText: 'Tipo'),
                        items: ['Normal', 'Festivo', 'Notturno']
                            .map((tipo) => DropdownMenuItem<String>(
                                  value: tipo,
                                  child: Text(tipo),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            tipoValue = value ??
                                'Normal'; // Set the default value if value is null
                          });
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        decoration: const InputDecoration(labelText: 'Note'),
                        onChanged: (value) {
                          noteText = value;
                        },
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: ismartValue,
                            onChanged: (value) {
                              setState(() {
                                ismartValue = value ??
                                    false; // Set the default value if value is null
                              });
                            },
                          ),
                          const Text('Is Smart?'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              final submittedData = {
                                'Minutes': minuteValue,
                                'Overtime': overtimeValue,
                                'Ore Viaggio': oreViaggioValue,
                                'Tipo': tipoValue,
                                'Note': noteText,
                                'Is Smart': ismartValue,
                              };

                              setState(() {
                                _submittedData = submittedData;
                              });

                              Card(
                                child: Column(
                                  children: [
                                    if (minuteValue != 0)
                                      Text(minuteValue.toString()),
                                    if (overtimeValue != 0)
                                      Text(overtimeValue.toString()),
                                    Text(tipoValue),
                                    Text(noteText)
                                  ],
                                ),
                              );

                              print(
                                  'Date:$_selectedDay, Minute: $minuteValue, Overtime: $overtimeValue, Ore Viaggio: $oreViaggioValue, Tipo: $tipoValue, Note: $noteText, Is Smart: $ismartValue');
                              Navigator.of(context).pop();
                            },
                            child: Text('Submit'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Map<String, dynamic> _submittedData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Consuntivazione"),
      ),
      body: Column(
        children: [
          Center(
            child: Card(
              color: Colors.grey[200],
              child: TableCalendar(
                enabledDayPredicate: (day) => !_isWeekend(day),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.teal,
                  ),
                ),
                calendarStyle: const CalendarStyle(
                  outsideDaysVisible: false, // Hide the days of other months
                  weekendTextStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ), // Custom style for weekends

                  holidayTextStyle: TextStyle(
                      color: Colors.blue), // Custom style for holidays
                  defaultTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    shadows: [],
                  ), // Custom style for default (enabled) days
                  selectedTextStyle: TextStyle(
                      color: Colors.white,
                      shadows: []), // Custom style for the selected day
                ),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay =
                        focusedDay; // update `_focusedDay` here as well
                    _showSelectedDateDialog();
                  });
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
            ),
          ),
          const Stack(
            children: [
              Divider(
                height: 20,
                thickness: 2,
                color: Colors.teal,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: Card(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, index) {
                  int dayOfMonth = index + 1;
                  return Container(
                    width: 60, // Adjust the width of each column

                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Center(
                      child: Text('$dayOfMonth'),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/");
                },
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.add_alert_rounded),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/");
                },
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/listconsuntivazione");
                },
              ),
              label: ""),
        ],
      ),
    );
  }
}
