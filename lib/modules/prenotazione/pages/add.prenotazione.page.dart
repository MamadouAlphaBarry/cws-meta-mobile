import 'package:flutter/material.dart';

class AddPrenotazione extends StatelessWidget {
  const AddPrenotazione({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Prenotazione"),
      ),
      body: Center(
        child: Card(
          child: Text("AddPrenotazione"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
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
                  Navigator.pushNamed(context, "/listprenota");
                },
              ),
              label: ""),
        ],
      ),
    );
  }
}
