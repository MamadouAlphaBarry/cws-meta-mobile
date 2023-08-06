import 'dart:convert';

import 'package:cws_meta_mbile/widgets/cws.main.drower.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late Stat products;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    http.get(Uri.parse("http://test2.meta.cws.it/stats")).then((response) {
      //  print(json.decode(response.body));
      // products.add(json.decode(response.body));

      print(products);
      setState(() {
        products = json.decode(response.body);
      });

      print(products);
      //   print(response.body);
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CWSMainDrower(),
        appBar: AppBar(
          title: const Text("CWS Dashboard"),
        ),
        body: Column(
          children: [
            InkWell(
              hoverColor: Colors.teal,
              // highlightShape: BoxShape.rectangle,
              splashColor: Colors.yellow,
              highlightColor: Colors.blue.withOpacity(0.5),
              onTap: () {
                print("object");
              },
              child: const Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.list,
                        size: 100.0,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text("je suis le tedstdatae suis le tedstdata"),
                        Text("je suis le tedstdatae suis le tedstdata"),
                        Text("je suis le tedstdatae suis le tedstdata}"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              hoverColor: Colors.teal,
              // highlightShape: BoxShape.rectangle,
              splashColor: Colors.yellow,
              highlightColor: Colors.blue.withOpacity(0.5),
              onTap: () {
                print("object");
              },
              child: const Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.computer_sharp,
                        size: 100.0,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text("40"),
                        Text("je suis le tedstdatae suis le tedstdata"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              hoverColor: Colors.teal,
              // highlightShape: BoxShape.rectangle,
              splashColor: Colors.yellow,
              highlightColor: Colors.blue.withOpacity(0.5),
              onTap: () {
                print("object");
              },
              child: const Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.notifications,
                        size: 100.0,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text("0"),
                        Text("je suis le tedstdatae suis le tedstdata"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class Stat {
  int _commese;
  int _tr_nap;
  int _nsap;
  int _notifiche;

  Stat(this._commese, this._tr_nap, this._nsap, this._notifiche);

  int get notifiche => _notifiche;

  set notifiche(int value) {
    _notifiche = value;
  }

  int get nsap => _nsap;

  set nsap(int value) {
    _nsap = value;
  }

  int get tr_nap => _tr_nap;

  set tr_nap(int value) {
    _tr_nap = value;
  }

  int get commese => _commese;

  set commese(int value) {
    _commese = value;
  }
}
