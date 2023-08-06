import 'package:cws_meta_mbile/widgets/cws.table.dart';
import 'package:flutter/material.dart';

class ListConsuntivazione extends StatelessWidget {
  const ListConsuntivazione({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Consuntivazione"),
      ),
      body: const Center(
        child: Card(
          child: CWSTable(),
        ),
      ),
    );
  }
}
