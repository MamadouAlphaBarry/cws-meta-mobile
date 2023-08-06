import 'package:flutter/material.dart';

class CWSTable extends StatelessWidget {
  const CWSTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 30, // Adjust the spacing between columns
        horizontalMargin: 10, // Adjust the margin around the table
        columns: const [
          DataColumn(label: Text('Risorsa')),
          DataColumn(label: Text('Straordinari')),
          DataColumn(label: Text('Approva')),
          DataColumn(label: Text('Rifiuta')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('John DoeJohn DoeJohn Doe')),
            DataCell(Text('2023-07-03-2 hours')),
            DataCell(
              IconButton(
                icon: const Icon(
                  Icons.back_hand_sharp,
                  color: Colors.teal,
                ), // Replace with your desired icon
                onPressed: () {
                  print('Custom action for Assenze');
                  // Add your desired action here
                },
              ),
            ),
            DataCell(
              IconButton(
                icon: const Icon(
                  Icons.no_accounts,
                  color: Colors.redAccent,
                ), // Replace with your desired icon
                onPressed: () {
                  print('Custom action for Assenze');
                  // Add your desired action here
                },
              ),
            ),
          ]),

          // Add more rows here if needed
        ],
      ),
    );

    /** DataTable(
      columns: const [
        DataColumn(label: Text('Risorsa')),
        DataColumn(label: Text('Straordinari')),
        DataColumn(label: Text('Azioni')),
      ],
      rows: [
        DataRow(cells: [
          const DataCell(Text('John DoeAlpha Barry ')),
          const DataCell(Text('2 hours 2023-07-03- 0.00- ore-R.O.L. ')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                // Add your button's action here
                print('Primary Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Set the primary color of the button
                onPrimary: Colors.white, // Set the text color
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 8), // Adjust the padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Adjust the border radius
                ),
              ),
              child: const Icon(Icons.access_alarm_outlined),
            ),
          ),
        ]),
        const DataRow(cells: [
          DataCell(Text('Jane Smith ohn DoeAlpha Barry')),
          DataCell(Text('1.5 hours')),
          DataCell(Text('Task B')),
        ]),
        // Add more rows here if needed
      ],
    );*/
  }
}
