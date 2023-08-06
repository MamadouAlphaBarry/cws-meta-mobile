import 'package:flutter/material.dart';

class ListeNoteSpese extends StatelessWidget {
  const ListeNoteSpese({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Note spese"),
      ),
      body: const Center(
        child: Card(
          child: Text("List NoteSpese"),
        ),
      ),
    );
  }
}
