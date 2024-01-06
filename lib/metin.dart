import 'package:flutter/material.dart';

TextStyle kMetinKalin=TextStyle(fontSize: 14,color: Colors.black,fontWeight:FontWeight.bold);
TextStyle kMetinInce=TextStyle(fontSize: 14,color: Colors.black,);
TextStyle kMetinInceK=TextStyle(fontSize: 14,color: kahve,);
Color kahve=Color(0xffa1887f);
Color siyah=Color(0xff000000);
Color mavi =Color(0xff4d48f9);


class ResimIcon extends StatelessWidget{
  //Color iconRenk;
  //double iconSize;
  //ResimIcon({required this.iconRenk,required this.iconSize});
  @override
  Widget build(BuildContext context){
    return ImageIcon(AssetImage('images1/kartonbardak.png'),color: Color(0xffebe4e0),size:800);
  }

}