import 'package:flutter/material.dart';
import 'package:srink/My_Scaffold.dart';
import 'package:srink/my_container.dart';

import 'metin.dart';

class IslemGecmisi extends StatefulWidget {
  @override
  State<IslemGecmisi> createState() => _IslemGecmisiState();
}

class _IslemGecmisiState extends State<IslemGecmisi> {
  final PageController controller=PageController(initialPage:0);
  Color color1 = mavi;
  Color color2 = siyah;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        titlee: 'İşlem Geçmişim',
        widgett: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.end,
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
                          onPressed: () {controller.animateToPage(0, duration: Duration(milliseconds: 450), curve:Curves.ease);
                            setState(() {
                              color1 = mavi;
                              color2 = siyah;
                            });
                          },
                          child: Text(
                            'Sipariş İşlemleri',
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
                          onPressed: () {controller.animateToPage(1, duration: Duration(milliseconds: 450), curve:Curves.ease);
                            setState(() {
                              color2 = mavi;
                              color1 = siyah;
                            });
                          },
                          child: Text(
                            'Üyelik İşlemleri',
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
                  child: PageView( controller: controller,scrollDirection: Axis.horizontal,
                    children: [Container(
                        padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
                        child: Column(
                          children: [Expanded(flex:1,
                            child: Container(height: 50,alignment: Alignment.bottomLeft,padding: EdgeInsets.only(bottom: 10),
                              child: Text('Son 1 ay',style: TextStyle(color: kahve,fontSize: 14),),decoration: BoxDecoration(color: Color(0xffebe4e0),border: BorderDirectional(bottom:BorderSide(color: kahve))),),
                          ),
                            Expanded(flex: 11,
                              child: ListView.builder(
                                itemBuilder: (context, index) => My_Container(
                              tarih: index + 1,
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(padding: EdgeInsets.symmetric(horizontal: 27),child: Column(children: [Container(padding: EdgeInsets.only(top: 20,bottom: 20),height:120,decoration: BoxDecoration(border: BorderDirectional(bottom:  BorderSide(color: kahve,))),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Üyelik Yineleme',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Basic / Aylık\nt449.0 ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '10.09.2023\n13.46',
                                style: TextStyle(color: kahve, fontSize: 13),
                              ),
                              Text(
                                'Faturayı İndir',
                                style: TextStyle(
                                    color: mavi, fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),Container(padding: EdgeInsets.only(top: 20,bottom: 20),height:120,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ücretsiz Deneme',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),

                              Text(
                                '\nt0.0 ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '10.09.2023\n13.46',
                                style: TextStyle(color: kahve, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    )],)),]
                  ))
            ],
          ),
        ));
  }
}
