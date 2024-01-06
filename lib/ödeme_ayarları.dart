import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srink/My_Scaffold.dart';
import 'package:srink/form.dart';
import 'metin.dart';
import 'package:flutter_switch/flutter_switch.dart';

class OdemeYontemim extends StatefulWidget {
  @override
  State<OdemeYontemim> createState() => _OdemeYontemimState();
}

class _OdemeYontemimState extends State<OdemeYontemim> {
  bool valuee = false;
  final PageController controller = PageController(initialPage: 0);
  final PageController controller2 = PageController(initialPage: 0);
  Color color1 = mavi;
  int _value = 1;
  Color color2 = siyah;
  int flexdeger = 7;
  int flexdeger2 = 4;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      titlee: 'Ödeme Ayarlarım',
      widgett: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          border: BorderDirectional(
                              bottom: BorderSide(
                        color: color1 == mavi ? mavi : Color(0xffebe4e0),
                      ))),
                      child: TextButton(
                        onPressed: () {
                          controller.animateToPage(0,
                              duration: Duration(milliseconds: 450),
                              curve: Curves.ease);
                          setState(() {
                            color1 = mavi;
                            color2 = siyah;
                          });
                        },
                        child: Text(
                          'Kayıtlı Kartlarım',
                          style: TextStyle(color: color1, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: BorderDirectional(
                              bottom: BorderSide(
                        color: color2 == mavi ? mavi : Color(0xffebe4e0),
                      ))),
                      child: TextButton(
                        onPressed: () {
                          controller.animateToPage(1,
                              duration: Duration(milliseconds: 450),
                              curve: Curves.ease);
                          setState(() {
                            color2 = mavi;
                            color1 = siyah;
                          });
                        },
                        child: Text(
                          'Fatura Bilgilerim',
                          style: TextStyle(fontSize: 13, color: color2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 11,
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffd1c8c3),
                              ),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ödeme Talimatlı Kart',
                                    style: TextStyle(
                                        color: mavi,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'vakıf 000000********00',
                                    style:
                                        TextStyle(color: siyah, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffeeeeee),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.fromBorderSide(BorderSide(
                                      color:
                                          _value == 1 ? mavi : Colors.grey)),
                                ),
                                child: RadioListTile(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (val) {
                                      setState(() {
                                        val = _value;
                                        _value = 1;
                                      });
                                    },
                                    title: Text(
                                      'vakıf',
                                      style: kMetinKalin,
                                    ),
                                    activeColor: mavi,
                                    subtitle: Text(
                                      '0000 00** **** **00',
                                      style: kMetinInce,
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffeeeeee),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.fromBorderSide(BorderSide(
                                      color:
                                          _value == 2 ? mavi : Colors.grey)),
                                ),
                                child: RadioListTile(
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (val) {
                                      setState(() {
                                        val = _value;
                                        _value = 2;
                                      });
                                    },
                                    title: Text(
                                      'Muhammet Şahin',
                                      style: kMetinKalin,
                                    ),
                                    activeColor: mavi,
                                    subtitle: Text(
                                      '0000 00** **** **00',
                                      style: kMetinInce,
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffeeeeee),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.fromBorderSide(BorderSide(
                                      color:
                                          _value == 3 ? mavi : Colors.grey)),
                                ),
                                child: RadioListTile(
                                    value: 3,
                                    groupValue: _value,
                                    onChanged: (val) {
                                      setState(() {
                                        val = _value;
                                        _value = 3;
                                      });
                                    },
                                    title: Text(
                                      'Ziraat Bankası',
                                      style: kMetinKalin,
                                    ),
                                    activeColor: mavi,
                                    subtitle: Text(
                                      '0000 00** **** **00',
                                      style: kMetinInce,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images1/logo.png',
                                    height: 40,
                                    width: 50,
                                  ),
                                  Text(
                                    'masterpass',
                                    style: kMetinKalin,
                                  )
                                ],
                              ),
                              Text(
                                'Kredi kartı bilgilerin tarafımızdan saklanmamaktadır.\nMasterpass altyapısının güvencesiyle korunmaktadır.',
                                style: kMetinInce,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(360),
                                      border: Border.fromBorderSide(
                                          BorderSide(color: kahve))),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Seçili Kartı Sil',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(alignment: Alignment.center,
                    children: [Column(children: [Expanded(flex:1,child: SizedBox()),Expanded(flex:5,
                      child: PageView(scrollDirection: Axis.horizontal,
                          controller: controller2,
                          children: [
                            Expanded(
                              flex: 9,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28),
                                child: Column(
                                  children: [
                                    My_TextFormField(
                                        baslik: 'Ad Soyad*'),
                                    My_TextFormField(
                                        baslik: 'E-posta Adresi*'),
                                    My_TextFormField(
                                        baslik: 'Fatura Adresi*'),
                                    My_TextFormField(
                                        baslik:
                                        'T.C Kimlik No (Opsiyonel)')
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 11,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28),
                                child: Column(
                                  children: [
                                    My_TextFormField(
                                        baslik: 'Fatura Unvanı*'),
                                    My_TextFormField(
                                        baslik: 'Vergi Dairesi*'),
                                    My_TextFormField(
                                        baslik: 'Vergi Numarası*'),
                                    My_TextFormField(
                                        baslik: 'E-posta Adresi*'),
                                    My_TextFormField(
                                        baslik: 'Fatura Adresi*'),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),Expanded(flex:2,child: SizedBox())],),Column(
                      children: [
                        Expanded(flex:2,
                          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Bireysel',
                                style:
                                TextStyle(color: mavi, fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                child: FlutterSwitch(
                                  toggleSize: 23,
                                  padding: 2,
                                  activeColor: mavi,
                                  inactiveColor: mavi,
                                  height: 25,
                                  width: 60,
                                  value: valuee,
                                  onToggle: (value) {
                                    setState(() {
                                      value = valuee;
                                      valuee = !valuee;
                                      if (valuee == true) {
                                        flexdeger=8;
                                        flexdeger2=2;
                                        controller2.animateToPage(1,
                                            duration: Duration(milliseconds: 450),
                                            curve: Curves.ease);
                                      } else { flexdeger=7;
                                      flexdeger2=4;
                                        controller2.animateToPage(0,
                                            duration: Duration(milliseconds: 450),
                                            curve: Curves.ease);
                                      }
                                    });
                                  },
                                ),
                              ),
                              Text(
                                'Kurumsal',
                                style:
                                TextStyle(color: mavi, fontSize: 15),
                              ),

                            ],
                          ),
                        ),
                        Expanded(flex: 15,
                          child: Column(
                            children: [
                              Expanded(flex:flexdeger ,child: SizedBox()),
                              Expanded(
                                  flex: 1
                                  ,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(360),
                                        color: mavi),
                                    child: Text(
                                      'Güncelle',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    width: 350,
                                    height: 40,
                                  )),
                              Expanded(flex: flexdeger2, child: SizedBox())
                            ],
                          ),
                        ),
                      ],
                    ),
                    ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
