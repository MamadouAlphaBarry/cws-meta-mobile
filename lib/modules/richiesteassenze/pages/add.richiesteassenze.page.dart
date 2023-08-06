import 'package:flutter/material.dart';

class AddRichiesteAssenze extends StatelessWidget {
  const AddRichiesteAssenze({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Richieste di Assenze"),
      ),
      body: Center(
        child: Card(
          child: Text("AddRichieste"),
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
                  Navigator.pushNamed(context, "/listrequest");
                },
              ),
              label: ""),
        ],
      ),
    );
  }
}
