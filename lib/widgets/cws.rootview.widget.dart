import 'package:cws_meta_mbile/modules/acquisti/pages/add.acquisti.page.dart';
import 'package:cws_meta_mbile/modules/acquisti/pages/list.acquisti.page.dart';
import 'package:cws_meta_mbile/modules/consuntivazione/pages/add.consuntivazione.page.dart';
import 'package:cws_meta_mbile/modules/consuntivazione/pages/list.consuntivazione.page.dart';
import 'package:cws_meta_mbile/modules/dashboard/pages/dashboard.page.dart';
import 'package:cws_meta_mbile/modules/notespese/pages/add.notespese.page.dart';
import 'package:cws_meta_mbile/modules/notespese/pages/list.notespese.page.dart';
import 'package:cws_meta_mbile/modules/prenotazione/pages/add.prenotazione.page.dart';
import 'package:cws_meta_mbile/modules/prenotazione/pages/list.prenotazione.page.dart';
import 'package:cws_meta_mbile/modules/richiesteassenze/pages/add.richiesteassenze.page.dart';
import 'package:cws_meta_mbile/modules/richiesteassenze/pages/list.richiesteassenze.page.dart';
import 'package:cws_meta_mbile/modules/trasferimento/pages/add.trasferimento.page.dart';
import 'package:cws_meta_mbile/modules/trasferimento/pages/list.trasferimento.page.dart';
import 'package:flutter/material.dart';

class CWSRootView extends StatelessWidget {
  const CWSRootView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: {
        "/": (context) => const DashBoard(),
        "/consuntinvazione": (context) => const AddConsuntivazione(),
        "/listconsuntivazione": (context) => const ListConsuntivazione(),
        "/notespese": (context) => const AddNoteSpese(),
        "/listnotespese": (context) => const ListeNoteSpese(),
        "/transfer": (context) => const AddTrasferimento(),
        "/listtransfer": (context) => const ListTrasferimento(),
        "/acquisti": (context) => const AddAcquisti(),
        "/listacquisti": (context) => const ListAcquisti(),
        "/request": (context) => const AddRichiesteAssenze(),
        "/listrequest": (context) => const ListRichiesteAssenze(),
        "/prenota": (context) => const AddPrenotazione(),
        "/listprenota": (context) => const ListPrenotazione(),
      },
    );
  }
}
