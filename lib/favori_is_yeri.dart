import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_base.dart';
import 'metin.dart';

class FavoriIsYeri extends StatefulWidget {
  const FavoriIsYeri({super.key});

  @override
  State<FavoriIsYeri> createState() => _FavoriIsYeriState();
}

class _FavoriIsYeriState extends State<FavoriIsYeri> {
  @override
  Widget build(BuildContext context) {
    bool geri = Provider.of<DataBase>(context).geri;
    bool selected = Provider.of<DataBase>(context).selected;
    Function yeniSelected = Provider.of<DataBase>(context).selectedDegis;
    Function yeniGeri = Provider.of<DataBase>(context).geriDegis;

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
            geri = true;
            yeniGeri(geri);
            selected = true;
            yeniSelected(selected);
            Future.delayed(
              Duration(milliseconds: 450),
              () {
                selected = false;
                yeniSelected(selected);
              },
            );
          },
        ),
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Favori İş yeri',
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.add_location,
                color: Colors.deepOrange,
                size: 70,
              ),
              Text(
                'Favori Frink noktan bulunmamaktadır.',
                style: kMetinInce,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/14,),
              Container(padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/14),
                decoration: BoxDecoration(
                    color: mavi, borderRadius: BorderRadius.circular(360)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Favori Frink Noktanı Ekle',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffebe4e0),
    );
  }
}
