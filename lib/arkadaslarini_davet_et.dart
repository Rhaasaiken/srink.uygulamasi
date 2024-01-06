import 'package:flutter/material.dart';
import 'package:srink/My_Scaffold.dart';

import 'metin.dart';

class ArkadaslariniDavetEt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        titlee: 'Arkadaşını Davet Et',
        widgett: Center(
          child: FractionallySizedBox(
            widthFactor: 0.85,
            heightFactor: 0.90,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(radius:MediaQuery.of(context).size.height/19,
                          backgroundColor: Color(0xffbcaaa4),backgroundImage: AssetImage('images1/arki.png'),),
                      Padding(
                        padding: EdgeInsets.only(top:10),
                        child: Text('Bitmeyen Kahve Deneyimini\nSevdiklerinle Paylaş',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: mavi),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        'Referans kodunu arkadaşlarınla paylaş,arkadaşın ilk\nödemesini yaptığında hem sen hem arkadaşın 80TL\nindirim kazanın!',
                        style: kMetinInce,
                        textAlign: TextAlign.center,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Referans Kodu',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                height: MediaQuery.of(context).size.height / 15,
                                padding: EdgeInsets.only(
                                    left: 20, top: 2, bottom: 2),
                                color: Color(0xffd7ccc8),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1MK8QZ7K',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              color: Color(0xffbcaaa4)))),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                height: MediaQuery.of(context).size.height / 15,
                                color: Color(0xffd7ccc8),
                                child: GestureDetector(
                                  child: Container(alignment: Alignment.center,child: Text('Kodu Paylaş',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                                    decoration: BoxDecoration(
                                        color: mavi,
                                        borderRadius:
                                            BorderRadius.circular(360)),
                                  ),
                                ),
                              ))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '*Davet eden kişinin indirimi ilk üyelik yenilenmesinde\nuygulanacaktır\n**İndirim kazanımı 3 kişi ile sınırlıdır.',
                        style: TextStyle(color: kahve, fontSize: 14),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
