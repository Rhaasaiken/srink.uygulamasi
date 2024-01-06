import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:srink/My_Scaffold.dart';
import 'package:srink/metin.dart';

class KuponKodu extends StatefulWidget {
  @override
  State<KuponKodu> createState() => _KuponKoduState();
}

class _KuponKoduState extends State<KuponKodu> {
  bool selected = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 6),
      () {
        setState(() {
          selected = !selected;
        });
      },
    );
  }

  void degisf() {
    setState(() {
      Future.delayed(Duration(seconds: 6), () {
        setState(() {
          selected = !selected;
        });
      });
    });
  }

  void degist() {
    setState(() {
      Future.delayed(
        Duration(milliseconds: 8),
        () {
          setState(() {
            selected = !selected;
          });
        },
      );
    });
  }

  Widget build(BuildContext context) {
    return MyScaffold(
        titlee: 'Kupon Kodu Kullan',
        widgett: Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
          child: Column(
            children: <Widget>[
              //animated builder ile yap
              Expanded(
                flex: 3,
                child: CircleAvatar(
                  child: Padding(
                    padding:EdgeInsets.all(MediaQuery.of(context).size.height/330),
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: Stack(clipBehavior: Clip.none, children: [
                        Positioned(
                          child: AnimatedAlign(
                            onEnd: selected ? degist : degisf,
                            alignment: selected
                                ? Alignment.bottomCenter
                                : Alignment.center,
                            duration: Duration(seconds: 2),
                            curve: selected?Curves.fastOutSlowIn:Curves.linear,
                            child: Transform.rotate(angle: -pi/4,
                              child: AnimatedContainer(duration: Duration(seconds: 2),height: selected?30:50,
                                width: selected?30:50,
                                curve: Curves.linear,
                                child: Image.asset(
                                  'images1/tisset.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  radius: MediaQuery.of(context).size.height / 19,
                  backgroundColor: Color(0xffbcaaa4),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kupon kodu kullan, ödeme döneminde daha az öde!',
                    style: kMetinInce,
                  ),
                ),
              ),
              Expanded(
                flex: 19,
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kupon Kodu',
                        style: kMetinInce,
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              )),
                          Expanded(
                            flex: 2,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Uygula',
                                  style: TextStyle(color: mavi, fontSize: 14),
                                )),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Kupon Kullanımını Onayla',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffbcaaa4),
                      borderRadius: BorderRadius.circular(360),
                    ),
                  ),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ));
  }
}
