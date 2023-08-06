import 'package:flutter/material.dart';

class ListRichiesteAssenze extends StatelessWidget {
  const ListRichiesteAssenze({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Richieste Assenze"),
      ),
      body: Center(
        child: Card(
          child: Text("List Richieste"),
        ),
      ),
    );
  }
}
