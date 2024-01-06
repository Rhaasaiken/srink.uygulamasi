import 'package:flutter/material.dart';
import 'package:srink/metin.dart';
class My_Container extends StatelessWidget {
  int tarih = 1;
  My_Container({required this.tarih});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      height: 100,
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(
        color: kahve,
      ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hemen Al Siparişi',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Soguk Filtre Kahve,Büyük Boy,Az Yağlı \nKahve Dünyası - Eskişehir Espark AVM ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$tarih.09.2023\n13.46',
                style: TextStyle(color: kahve, fontSize: 13),
              ),
              Text(
                'Tekrarla',
                style: TextStyle(
                    color: mavi, fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyContainer2 extends StatefulWidget {
  String text = '';
  MyContainer2({required this.text,});

  @override
  State<MyContainer2> createState() => _MyContainer2State();
}

class _MyContainer2State extends State<MyContainer2> {
  Color renk = kahve;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (renk == kahve) {
              renk = mavi;
            } else {
              renk = kahve;
            }
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17),
          margin: EdgeInsets.symmetric(horizontal: 3),
          alignment: Alignment.center,
          height: 30,
          child: Text(
            widget.text,
            style: TextStyle(color: renk == kahve ? Colors.black : mavi),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: renk),
            borderRadius: BorderRadius.circular(360),
          ),
        ));
  }
}
class MyContainer3 extends StatefulWidget {
  String text = '';
  MyContainer3({required this.text,});

  @override
  State<MyContainer3> createState() => _MyContainer3State();
}

class _MyContainer3State extends State<MyContainer3> {
  Color renk = kahve;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (renk == kahve) {
              renk = mavi;
            } else {
              renk = kahve;
            }
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17),
          margin: EdgeInsets.symmetric(horizontal: 3),
          alignment: Alignment.center,
          height: 30,
          child: Text(
            widget.text,
            style: TextStyle(color: renk == kahve ? Colors.black : mavi),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: renk),
            borderRadius: BorderRadius.circular(360),
            color: Colors.white
          ),
        ));
  }
}

class KahveciContainer extends StatelessWidget {

  String text;
  String text2;
  String text3;
  String text4;
  KahveciContainer(
      {
      required this.text,
      required this.text2,
      required this.text3,
      required this.text4});
  @override
  Widget build(BuildContext context) {
    return Container(margin:EdgeInsets.fromLTRB(0,0,0, 13),height: MediaQuery.of(context).size.height/4.1,decoration: BoxDecoration(border: BorderDirectional(bottom: BorderSide(color:kahve,))),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(alignment:Alignment.topCenter,child: Icon(Icons.location_on,color: mavi,size: 35,)),
                ),
                SizedBox(height:15,),
                Expanded(
                    flex: 1,
                    child: Container(alignment: Alignment.topCenter,
                      child: Icon(Icons.radio_button_checked,color:  Color(0xff26a69a),)
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,7,0,13),
                    child: Text(text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                  ),
                  Text(text2,style: kMetinInce,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,8,0),
                          child: Text(
                            'Şu an açık',
                            style: TextStyle(fontSize: 14,
                              color: Color(0xff26a69a),
                            ),
                          ),
                        ),
                        Text(
                          'Çalışma saatleri: 07:00-00:00',
                          style: kMetinInce,
                        )
                      ],
                    ),
                  ),
                  Text(text3),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Expanded(flex: 1,
                          child: GestureDetector(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Yol Tarifi',
                                style: TextStyle(
                                    color: mavi,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),Expanded(flex: 1,
                          child: GestureDetector(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Favori Ekle',
                                style: TextStyle(
                                    color: mavi,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(height:20,alignment:Alignment.center,child: Text(text4,style: TextStyle(fontSize: 14,color: Colors.white),),decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),color: kahve),),
          ),
        ],
      ),
    );
  }
}
