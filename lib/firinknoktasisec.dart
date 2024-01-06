import 'package:flutter/material.dart';
//import 'package:srink/main.dart';
import 'package:srink/metin.dart';
import 'package:srink/my_container.dart';

import 'main.dart';

class FrinkNoktasiSec extends StatefulWidget {
  @override
  State<FrinkNoktasiSec> createState() => _FrinkNoktasiSecState();
}

class _FrinkNoktasiSecState extends State<FrinkNoktasiSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions: <Widget>[Padding(
      padding: EdgeInsets.fromLTRB(0,0,20,0),
      child: Icon(Icons.map,color: Colors.black,),
    )],
      backgroundColor: Color(0xffebe4e0),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_outlined,
          size: 30,
          color: siyah,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AnaSayfa()));
        },
      ),
      elevation: 0,
      centerTitle: false,
      title: Text(
        'Bir Frink Noktası Seç',
        style: TextStyle(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
      ),
    ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 6,
                        child: FractionallySizedBox(
                          widthFactor: 0.9,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                alignLabelWithHint: false,
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: kahve)),
                                labelText: 'Arama',
                                labelStyle: TextStyle(color: kahve, fontSize: 13),
                                hintText: 'Frink noktası ismi ile ara',
                                hintStyle: TextStyle(
                                    color: Colors.blueGrey, fontSize: 14)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: FractionallySizedBox(
                          widthFactor: 1,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              MyContainer2(
                                text: 'Şu An Açık',
                              ),
                              MyContainer2(
                                text: 'Önce En Yüksek',
                              ),
                              MyContainer2(
                                text: 'Açık Oturma Alanı',
                              ),
                              MyContainer2(
                                text: 'Otopark',
                              ),
                              MyContainer2(
                                text: 'Wifi',
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                        flex: 5,
                      )
                    ],
                  )),
              Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sana En Yakın Frink Noktaları',
                              style: kMetinKalin,
                            ),
                          ),
                        ),
                        Divider(color: kahve),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5'),
                              KahveciContainer(
                                  text: 'Kahve Dünyası - Eskişehir\n Espark AVM',
                                  text2: 'Eski Bağlar Mah. Fabrikalar Sok. No:3\nESKİBAĞLAR MAH. TEPEBAŞI/ESKİŞEHİR',
                                  text3: '0.02km',
                                  text4: '4.5')
                            ],
                          ),
                          flex: 15,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
