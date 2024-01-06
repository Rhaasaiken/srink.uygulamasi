import 'package:flutter/material.dart';
import 'package:srink/%C3%B6deme_ayarlar%C4%B1.dart';
import 'package:srink/%C3%BCyelik.dart';
import 'package:srink/arkadaslarini_davet_et.dart';
import 'package:srink/frink_noktasi.dart';
import 'package:srink/islem_gecmisi.dart';
import 'package:srink/kupon_kodu.dart';
import 'package:srink/profil.dart';
import 'package:srink/settings.dart';

import 'metin.dart';

class DraWer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(width: MediaQuery.of(context).size.width*0.85,child: Container(color: Color(0xffebe4e0),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  color: Color(0xffd1c8c3),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(radius: MediaQuery.of(context).size.height/25,backgroundImage:AssetImage('images1/IMG_6149.JPG'),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Muhammet',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xff4d48f9),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Profilimi Görüntüle',
                              style: TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile(),),);},
                          icon: Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Uyelik(),),);},
                        leading: Icon(
                          Icons.person_outline,
                          color:kahve,
                          size: 30,
                        ),
                        title: Text(
                          'Üyeliğim',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      ListTile(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>IslemGecmisi()),);},
                        leading: Icon(
                          Icons.access_time_rounded,
                          color: kahve,
                          size: 30,
                        ),
                        title: Text(
                          'İşlem Geçmişim',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      ListTile(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OdemeYontemim()));},
                        leading: Icon(
                          Icons.credit_card_rounded,
                          color: kahve,
                          size: 30,
                        ),
                        title: Text(
                          'Ödeme Ayarlarım',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  width: 290,
                  child: Divider(
                    color: Color(0xffa1887f),
                  )),
              Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(
                      children: [
                        ListTile(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>FrinkNoktalari()));},
                          leading: Icon(
                            Icons.storefront,
                            color: kahve,
                            size: 30,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Frink Noktaları',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '373 noktadayız',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xffa1887f)),
                              )
                            ],
                          ),
                        ),
                        ListTile(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>KuponKodu(),),);},
                          leading: Icon(
                            Icons.confirmation_number_outlined,
                            color: kahve,
                            size: 30,
                          ),
                          title: Text(
                            'Kupon Kodu Kullan',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        ListTile(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>ArkadaslariniDavetEt(),),);},
                          leading: Icon(
                            Icons.people_outline,
                            color: kahve,
                            size: 30,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Arkadaşlarını Davet Et',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Sonraki ödemende 80 tl indirim kazan',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xffa1887f)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Container(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),height: 60,
                  color: mavi,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Ayarlar(),),);},
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 30,
                          ),),Text('Ayarlar',style: TextStyle(fontSize: 15,color: Colors.white),)
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
