import 'package:flutter/material.dart';

class ListPrenotazione extends StatelessWidget {
  const ListPrenotazione({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista Prenotazione"),
      ),
      body: Center(
        child: Card(
          child: Text("List Prenotazione"),
        ),
      ),
    );
  }
}
