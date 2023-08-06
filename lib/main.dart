import 'package:cws_meta_mbile/widgets/cws.rootview.widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CWSApp());
}

class CWSApp extends StatelessWidget {
  const CWSApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CWSRootView();
  }
}
