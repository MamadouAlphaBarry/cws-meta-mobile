import 'package:flutter/material.dart';

class ListTrasferimento extends StatelessWidget {
  const ListTrasferimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trasferimento"),
      ),
      body: const Center(
        child: Card(
          child: Text("List Trasferimento"),
        ),
      ),
    );
  }
}
