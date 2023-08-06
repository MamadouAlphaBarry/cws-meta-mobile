import 'package:flutter/material.dart';

class AddAcquisti extends StatelessWidget {
  const AddAcquisti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Acquisti"),
      ),
      body: const Center(
        child: Card(
          child: Text("Add Acquisti"),
        ),
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
                  Navigator.pushNamed(context, "/listacquisti");
                },
              ),
              label: ""),
        ],
      ),
    );
  }
}
