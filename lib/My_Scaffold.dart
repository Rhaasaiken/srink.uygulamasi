import 'package:flutter/material.dart';

import 'metin.dart';

class MyScaffold extends StatelessWidget {
  String titlee;
  Widget widgett;
  MyScaffold({required this.titlee, required this.widgett});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffebe4e0),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 30,
              color: siyah,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          centerTitle: false,
          title: Text(
            titlee,
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ),
        body: widgett);
  }
}
