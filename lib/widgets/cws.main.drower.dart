import 'package:cws_meta_mbile/widgets/cws.drower.header.widget.dart';
import 'package:cws_meta_mbile/widgets/cws.drower.item.widget,dart.dart';
import 'package:flutter/material.dart';

class CWSMainDrower extends StatelessWidget {
  const CWSMainDrower({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> menu = [
      {
        "title": "Dashboard",
        "route": "/",
        "laddingIcon": Icons.home,
        "trainingIcon": Icons.arrow_forward,
      },
      {
        "title": "Consuntivazione",
        "route": "/consuntinvazione",
        "laddingIcon": Icons.calendar_month_sharp,
        "trainingIcon": Icons.arrow_forward,
      },
      {
        "title": "Note spese",
        "route": "/notespese",
        "laddingIcon": Icons.note_alt_outlined,
        "trainingIcon": Icons.arrow_forward,
      },
      {
        "title": "Trasferimento su commessa",
        "route": "/transfer",
        "laddingIcon": Icons.transfer_within_a_station,
        "trainingIcon": Icons.arrow_forward,
      },
      {
        "title": "Acquisti",
        "route": "/acquisti",
        "laddingIcon": Icons.list,
        "trainingIcon": Icons.arrow_forward,
      },
      {
        "title": "Richiesta assenze",
        "route": "/request",
        "laddingIcon": Icons.list,
        "trainingIcon": Icons.arrow_forward,
      },
      {
        "title": "Prenota Pastazione",
        "route": "/prenota",
        "laddingIcon": Icons.chair,
        "trainingIcon": Icons.arrow_forward,
      }
    ];
    return Drawer(
        child: Column(
      children: [
        const CWSDrowerHeader(),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return CWSDrowerItem(
                    title: menu[index]['title'],
                    leading: menu[index]['laddingIcon'],
                    trailing: menu[index]['trainingIcon'],
                    onAction: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, menu[index]['route']);
                    });
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 4,
                );
              },
              itemCount: menu.length),
        ),
      ],
    ));
  }
}
