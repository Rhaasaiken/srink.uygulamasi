import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:srink/son_siparis.dart';

import 'data_base.dart';
import 'metin.dart';

class Cocuklar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    bool geri=Provider.of<DataBase>(context).geri;
    Function yeniGeri=Provider.of<DataBase>(context).geriDegis;
    bool selected=Provider.of<DataBase>(context).selected;
    Function yeniSelected=Provider.of<DataBase>(context).selectedDegis;
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
              geri=true;
              yeniGeri(geri);
              selected=true;
              yeniSelected(selected);
              Future.delayed(Duration(milliseconds: 450),() {
                selected=false;
                yeniSelected(selected);
              } ,);},
          ),
          elevation: 0,
          centerTitle: false,
          title: Text(
            'İşlem Geçmişim',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ),
        body: SonSiparisler());
  }
}
