import 'dart:math';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:srink/cocuklar.dart';
import 'package:srink/drawer.dart';
import 'package:srink/favori_is_yeri.dart';
import 'package:srink/firinknoktasisec.dart';
import 'package:srink/uzaktan_siparis.dart';
import 'data_base.dart';
import 'metin.dart';

void main() {
  runApp(ChangeNotifierProvider<DataBase>(
      create: (BuildContext context) => DataBase(), child: Srink()));
}

class Srink extends StatelessWidget {
  String isim = 'ŞRİNNK';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffebe4e0),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            titleTextStyle: TextStyle(
              fontSize: 40,
              color: Color(0xff4d48f9),
            )),
      ),
      title: isim,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with TickerProviderStateMixin {
  late final AnimationController _controller1 =
      AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  late final AnimationController _controller2 =
      AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  late final AnimationController _controller2i =
      AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  late final AnimationController _controller3 =
      AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  late final Animation<double> animation =
      Tween(begin: 0.0, end: 0.0).animate(_controller1);
  late final Animation<double> animation1 =
      Tween(begin: 0.25, end: 0.0).animate(_controller1);
  late final Animation<double> animation2 =
      Tween(begin: -0.5, end: 0.0).animate(_controller2);
  late final Animation<double> animation2i =
      Tween(begin: 0.5, end: 0.0).animate(_controller2i);
  late final Animation<double> animation3 =
      Tween(begin: -0.25, end: 0.0).animate(_controller3);
  double begin = 0.0;
  // bool _selected = false;
  int baslangic = 20;
  double kenar = -4;
  int index1 = 0;
  int sayfaNo = 1;
  double sayfaGenislik = 1.0;
  bool childDegisim = false;
  List<Icon> icon = [
    Icon(
      Icons.flash_on,
      size: 60,
      color: mavi,
    )
  ];
  List<Icon> icon1 = [];


  late PageController controller = PageController(initialPage: baslangic);
  @override
  Widget build(BuildContext context) {
    bool selected = Provider.of<DataBase>(context).selected;
    bool geri = Provider.of<DataBase>(context).geri;
    double aci = Provider.of<DataBase>(context).aci;
    Function yeniAci = Provider.of<DataBase>(context).aciDegis;
    Function yeniSelected = Provider.of<DataBase>(context).selectedDegis;
    Function yeniGeri = Provider.of<DataBase>(context).geriDegis;
    void hemenAlGecisi() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FrinkNoktasiSec()));
      Future.delayed(
        Duration(milliseconds: 600),
        () {
          selected = !selected;
          yeniSelected(selected);
          ;
        },
      );
      ;
    }

    void digerGecisler() {
      aci == -2
          ? Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cocuklar()))
          : aci == 1 / 2
              ? Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavoriIsYeri()))
              : Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UzaktanSiparis()));
      aci = 2;
      yeniAci(aci);
    }

    void gecisler() {
      aci == 2 ? hemenAlGecisi() : digerGecisler();
      geri = false;
      yeniGeri(geri);
    }

//Stack(
//                       children: [FittedBox(fit: BoxFit.cover,child: ResimIcon(iconRenk: Color(0xffebe4e0), iconSize: MediaQuery.of(context).size.height*0.5)),ResimIcon(iconRenk: kahve, iconSize: MediaQuery.of(context).size.height*0.5),]
//                     )
    return Scaffold(
      drawer: DraWer(),
      body: Stack(clipBehavior: Clip.none, children: [
        SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: GestureDetector(
                                  child: Builder(
                                      builder: (context) => TextButton(
                                            onPressed: () {
                                              Scaffold.of(context).openDrawer();
                                            },
                                            child: selected == false
                                                ? CircleAvatar(
                                                    radius:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            35,
                                                    backgroundColor:
                                                        Colors.white,
                                                    backgroundImage: AssetImage(
                                                        'images1/IMG_6149.JPG'),
                                                  )
                                                : SizedBox(),
                                          ))),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 6,
                              child: Text(
                                selected == false ? 'Muhammet' : '',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'srink',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 45,
                                color: mavi,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.topRight,
                          child: selected == false
                              ? Icon(Icons.campaign)
                              : SizedBox(),
                          padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      'İyi Günler Muhammet',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Center(
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.hardEdge,
                        children: <Widget>[
                          AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            height:
                                MediaQuery.of(context).size.height / 10 * 4.38,
                            width:
                                MediaQuery.of(context).size.height / 10 * 4.38,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffd1c8c3),
                            ),
                          ),
                          RotationTransition(
                            turns: begin == 0
                                ? animation
                                : begin == 1
                                    ? animation1
                                    : begin == 2 && aci == -2
                                        ? animation2
                                        : begin == 2 && aci == 1
                                            ? animation2
                                            : begin == 2 && aci == 2
                                                ? animation2i
                                                : begin == 2 && aci == 1 / 2
                                                    ? animation2i
                                                    : animation3,
                            child: CircleAvatar(
                              child: Transform.rotate(
                                angle: pi / kenar,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10 *
                                                    1.85 -
                                                3,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10 *
                                                    1.85 -
                                                3,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        width: 1.9,
                                                        color: Color(
                                                            0xffd1c8c3)))),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10 *
                                                    1.85 -
                                                3,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10 *
                                                    1.85 -
                                                3,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.9,
                                                        color: Color(
                                                            0xffd1c8c3)))),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10 *
                                                    1.85 -
                                                3,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10 *
                                                    1.85 -
                                                3,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    top: BorderSide(
                                                        width: 1.9,
                                                        color: Color(
                                                            0xffd1c8c3)))),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10 *
                                                    1.85 -
                                                3,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    10 *
                                                    1.85 -
                                                3,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    left: BorderSide(
                                                        width: 1.9,
                                                        color: Color(
                                                            0xffd1c8c3)))),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              backgroundColor: Color(0xffebe4e0),
                              radius: MediaQuery.of(context).size.height /
                                  10 *
                                  1.85,
                            ),
                          ),
                          RotationTransition(
                            turns: begin == 0
                                ? animation
                                : begin == 1
                                    ? animation1
                                    : begin == 2 && aci == -2
                                        ? animation2
                                        : begin == 2 && aci == 1
                                            ? animation2
                                            : begin == 2 && aci == 2
                                                ? animation2i
                                                : begin == 2 && aci == 1 / 2
                                                    ? animation2i
                                                    : animation3,
                            child: Transform.rotate(
                              angle: pi / -4,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 10 * 4,
                                width:
                                    MediaQuery.of(context).size.height / 10 * 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(child: SizedBox()),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: mavi,
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(360)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(child: SizedBox()),
                                          Expanded(child: SizedBox()),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          RotationTransition(
                            turns: begin == 0
                                ? animation
                                : begin == 1
                                    ? animation1
                                    : begin == 2 && aci == -2
                                        ? animation2
                                        : begin == 2 && aci == 1
                                            ? animation2
                                            : begin == 2 && aci == 2
                                                ? animation2i
                                                : begin == 2 && aci == 1 / 2
                                                    ? animation2i
                                                    : animation3,
                            child: Transform.rotate(
                              angle: -pi / aci,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height /
                                    10 *
                                    3.60,
                                width: MediaQuery.of(context).size.height /
                                    10 *
                                    3.60,
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: CircularText(
                                    position: CircularTextPosition.inside,
                                    radius: 130,
                                    children: [
                                      TextItem(
                                        startAngleAlignment:
                                            StartAngleAlignment.center,
                                        startAngle: 0,
                                        space: 4.7,
                                        text: Text(
                                          'HEMEN AL',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: aci == 2
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                      TextItem(
                                        startAngleAlignment:
                                            StartAngleAlignment.center,
                                        startAngle: 90,
                                        space: 4.5,
                                        text: Text(
                                          'UZAKTAN SİPARİŞ',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: aci == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                      TextItem(
                                        startAngleAlignment:
                                            StartAngleAlignment.center,
                                        startAngle: 180,
                                        space: 4.5,
                                        text: Text(
                                          'SON SİPARİŞLER',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: aci == -2
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                      TextItem(
                                        startAngleAlignment:
                                            StartAngleAlignment.center,
                                        startAngle: 270,
                                        space: 4.5,
                                        text: Text(
                                          'FAVORİ İŞ YERİ',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: aci == 1 / 2
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: -pi / 4,
                            child: Container(
                              width: 300,
                              height: 300,
                              child: Wrap(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: MaterialButton(
                                        highlightColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        onPressed: () {
                                          setState(() {
                                            if (aci == 2) {
                                              aci = 1 / 2;
                                              yeniAci(aci);
                                              icon1.add(Icon(
                                                Icons.location_on,
                                                size: 60,
                                                color: mavi,
                                              ));
                                              if (baslangic == 1 ||
                                                  baslangic == 39 ||
                                                  baslangic == 21 ||
                                                  baslangic == 19) {
                                                icon.add(Icon(
                                                  Icons.location_on,
                                                  size: 60,
                                                  color: mavi,
                                                ));
                                              }
                                              ;
                                            } else if (aci == 1 / 2) {
                                              aci = -2;
                                              yeniAci(aci);
                                              icon1.add(Icon(
                                                Icons.autorenew,
                                                size: 60,
                                                color: mavi,
                                              ));
                                              if (baslangic == 1 ||
                                                  baslangic == 39 ||
                                                  baslangic == 21 ||
                                                  baslangic == 19) {
                                                icon.add(Icon(
                                                  Icons.autorenew,
                                                  size: 60,
                                                  color: mavi,
                                                ));
                                              }
                                              ;
                                            } else if (aci == -2) {
                                              aci = 1;
                                              yeniAci(aci);
                                              icon1.add(Icon(
                                                Icons.coffee,
                                                size: 60,
                                                color: mavi,
                                              ));
                                              if (baslangic == 1 ||
                                                  baslangic == 39 ||
                                                  baslangic == 21 ||
                                                  baslangic == 19) {
                                                icon.add(Icon(
                                                  Icons.coffee,
                                                  size: 60,
                                                  color: mavi,
                                                ));
                                              }
                                              ;
                                            } else if (aci == 1) {
                                              aci = 2;
                                              yeniAci(aci);
                                              icon1.add(Icon(
                                                Icons.flash_on,
                                                size: 60,
                                                color: mavi,
                                              ));
                                              if (baslangic == 1 ||
                                                  baslangic == 39 ||
                                                  baslangic == 21 ||
                                                  baslangic == 19) {
                                                icon.add(Icon(
                                                  Icons.flash_on,
                                                  size: 60,
                                                  color: mavi,
                                                ));
                                              }
                                              ;
                                            }
                                            begin = 3;
                                            kenar = -4 / 3;
                                            if (_controller3.isCompleted) {
                                              _controller3.reset();
                                              _controller3.forward();
                                            } else {
                                              _controller3.forward();
                                            }
                                            baslangic--;
                                            index1++;
                                            if (baslangic == 0 ||
                                                baslangic == 20) {
                                              controller.animateToPage(20,
                                                  duration: Duration(
                                                      milliseconds: 250),
                                                  curve: Curves.ease);
                                              baslangic = 20;
                                              index1 = 0;
                                              icon1 = [];
                                            }
                                            //aci==2?aci=1/2:aci==1/2?aci=-2:aci==-2?aci=1;
                                            else {
                                              controller.animateToPage(
                                                  baslangic,
                                                  duration: Duration(
                                                      milliseconds: 250),
                                                  curve: Curves.ease);
                                            }
                                          });
                                        }),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: MaterialButton(
                                        highlightColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        onPressed: () {}),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: MaterialButton(
                                        highlightColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        onPressed: () {
                                          setState(() {
                                            if (aci == 2) {
                                              aci = -2;
                                              yeniAci(aci);
                                              icon1.add(Icon(
                                                Icons.autorenew,
                                                size: 60,
                                                color: mavi,
                                              ));
                                              if (baslangic == 1 ||
                                                  baslangic == 39 ||
                                                  baslangic == 21 ||
                                                  baslangic == 19) {
                                                icon.add(Icon(
                                                  Icons.autorenew,
                                                  size: 60,
                                                  color: mavi,
                                                ));
                                              }
                                              ;
                                            } else if (aci == 1) {
                                              aci = 1 / 2;
                                              yeniAci(aci);
                                              icon1.add(Icon(
                                                Icons.location_on,
                                                size: 60,
                                                color: mavi,
                                              ));
                                              if (baslangic == 1 ||
                                                  baslangic == 39 ||
                                                  baslangic == 21 ||
                                                  baslangic == 19) {
                                                icon.add(Icon(
                                                  Icons.location_on,
                                                  size: 60,
                                                  color: mavi,
                                                ));
                                              }
                                              ;
                                            } else if (aci == 1 / 2) {
                                              aci = 1;
                                              yeniAci(aci);
                                              icon1.add(Icon(
                                                Icons.coffee,
                                                size: 60,
                                                color: mavi,
                                              ));
                                              if (baslangic == 1 ||
                                                  baslangic == 39 ||
                                                  baslangic == 21 ||
                                                  baslangic == 19) {
                                                icon.add(Icon(
                                                  Icons.coffee,
                                                  size: 60,
                                                  color: mavi,
                                                ));
                                              }
                                              ;
                                            } else if (aci == -2) {
                                              aci = 2;
                                              yeniAci(aci);
                                              icon1.add(Icon(
                                                Icons.flash_on,
                                                size: 60,
                                                color: mavi,
                                              ));
                                              if (baslangic == 1 ||
                                                  baslangic == 39 ||
                                                  baslangic == 21 ||
                                                  baslangic == 19) {
                                                icon.add(Icon(
                                                  Icons.flash_on,
                                                  size: 60,
                                                  color: mavi,
                                                ));
                                              }
                                              ;
                                            }
                                            begin = 2;
                                            kenar = 4 / 3;
                                            if (aci == 2 &&
                                                _controller2i.isCompleted) {
                                              _controller2i.reset();
                                              _controller2i.forward();
                                            } else if (aci == 1 / 2 &&
                                                _controller2i.isCompleted) {
                                              _controller2i.reset();
                                              _controller2i.forward();
                                            } else if (_controller2
                                                    .isCompleted &&
                                                aci == 1) {
                                              _controller2.reset();
                                              _controller2.forward();
                                            } else if (_controller2
                                                    .isCompleted &&
                                                aci == -2) {
                                              _controller2.reset();
                                              _controller2.forward();
                                            } else if (aci == -2) {
                                              _controller2.forward();
                                            } else if (aci == 1) {
                                              _controller2.forward();
                                            } else {
                                              _controller2i.forward();
                                            }
                                            if (aci == 2 || aci == 1 / 2) {
                                              baslangic++;
                                              index1++;
                                              if (baslangic == 0 ||
                                                  baslangic == 20) {
                                                controller.animateToPage(20,
                                                    duration: Duration(
                                                        milliseconds: 250),
                                                    curve: Curves.ease);
                                                baslangic = 20;
                                                index1 = 0;
                                                icon1 = [];
                                              }
                                              //aci==2?aci=1/2:aci==1/2?aci=-2:aci==-2?aci=1;
                                              else {
                                                controller.animateToPage(
                                                    baslangic,
                                                    duration: Duration(
                                                        milliseconds: 250),
                                                    curve: Curves.ease);
                                              }
                                            } else {
                                              baslangic--;
                                              index1++;
                                              if (baslangic == 40 ||
                                                  baslangic == 20) {
                                                controller.animateToPage(20,
                                                    duration: Duration(
                                                        milliseconds: 250),
                                                    curve: Curves.ease);
                                                baslangic = 20;
                                                index1 = 0;
                                                icon1 = [];
                                              }
                                              //aci==2?aci=1/2:aci==1/2?aci=-2:aci==-2?aci=1;
                                              else {
                                                controller.animateToPage(
                                                    baslangic,
                                                    duration: Duration(
                                                        milliseconds: 250),
                                                    curve: Curves.ease);
                                              }
                                            }
                                          });
                                        }),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: MaterialButton(
                                        highlightColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        onPressed: () {
                                          if (aci == 2) {
                                            aci = 1;
                                            yeniAci(aci);
                                            icon1.add(Icon(
                                              Icons.coffee,
                                              size: 60,
                                              color: mavi,
                                            ));
                                            if (baslangic == 1 ||
                                                baslangic == 39 ||
                                                baslangic == 21 ||
                                                baslangic == 19) {
                                              icon.add(Icon(
                                                Icons.coffee,
                                                size: 60,
                                                color: mavi,
                                              ));
                                            }
                                          } else if (aci == 1) {
                                            aci = -2;
                                            yeniAci(aci);
                                            icon1.add(Icon(
                                              Icons.autorenew,
                                              size: 60,
                                              color: mavi,
                                            ));
                                            if (baslangic == 1 ||
                                                baslangic == 39 ||
                                                baslangic == 21 ||
                                                baslangic == 19) {
                                              icon.add(Icon(
                                                Icons.autorenew,
                                                size: 60,
                                                color: mavi,
                                              ));
                                            }
                                            ;
                                          } else if (aci == -2) {
                                            aci = 1 / 2;
                                            yeniAci(aci);
                                            icon1.add(Icon(
                                              Icons.location_on,
                                              size: 60,
                                              color: mavi,
                                            ));
                                            if (baslangic == 1 ||
                                                baslangic == 39 ||
                                                baslangic == 21 ||
                                                baslangic == 19) {
                                              icon.add(Icon(
                                                Icons.location_on,
                                                size: 60,
                                                color: mavi,
                                              ));
                                            }
                                            ;
                                          } else if (aci == 1 / 2) {
                                            aci = 2;
                                            yeniAci(aci);
                                            icon1.add(Icon(
                                              Icons.flash_on,
                                              size: 60,
                                              color: mavi,
                                            ));
                                            if (baslangic == 1 ||
                                                baslangic == 39 ||
                                                baslangic == 21 ||
                                                baslangic == 19) {
                                              icon.add(Icon(
                                                Icons.flash_on,
                                                size: 60,
                                                color: mavi,
                                              ));
                                            }
                                            ;
                                          }
                                          begin = 1;
                                          kenar = 4;
                                          if (_controller1.isCompleted) {
                                            _controller1.reset();
                                            _controller1.forward();
                                          } else {
                                            _controller1.forward();
                                          }
                                          baslangic++;
                                          index1++;
                                          if (baslangic == 40 ||
                                              baslangic == 20) {
                                            controller.animateToPage(20,
                                                duration:
                                                    Duration(milliseconds: 250),
                                                curve: Curves.ease);
                                            baslangic = 20;
                                            index1 = 0;
                                            icon1 = [];
                                          }
                                          //aci==2?aci=1/2:aci==1/2?aci=-2:aci==-2?aci=1;
                                          else {
                                            controller.animateToPage(baslangic,
                                                duration:
                                                    Duration(milliseconds: 250),
                                                curve: Curves.ease);
                                          }
                                        }),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Frink Noktaları',
                        style: TextStyle(fontSize: 15, color: siyah),
                      ),
                    ],
                  ),
                ),
                Stack(alignment: Alignment.bottomCenter, children: [
                  Container(
                    color: Color(0xffebe4e0),
                    height: 70,
                  ),
                  Container(
                    height: 35,
                    color: mavi,
                  ),
                  Positioned(
                      bottom: 10,
                      child: Transform.rotate(
                        angle: -pi / 4,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(45, 30),
                                bottomRight: Radius.elliptical(30, 45),
                                topRight: Radius.circular(30)),
                            color: mavi,
                          ),
                          child: Transform.rotate(
                            angle: pi / 4,
                            child: IconButton(
                                alignment: Alignment.topCenter,
                                color: mavi,
                                onPressed: () {
                                },
                                icon: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ))
                ]),
              ],
            ),
          ),
        ),
        AnimatedPositioned(
          onEnd: geri == false
              ? gecisler
              : () {
                  null;
                  geri = false;
                  yeniGeri(geri);
                },
          duration: Duration(milliseconds: 500),
          right: selected
              ? geri == false
                  ? -500
                  : MediaQuery.of(context).size.width / 2 -
                      MediaQuery.of(context).size.height / 10 * 0.9
              : MediaQuery.of(context).size.width / 2 -
                  MediaQuery.of(context).size.height / 10 * 0.9,
          bottom: selected
              ? geri == false
                  ? -500
                  : MediaQuery.of(context).size.height * 0.445 -
                      MediaQuery.of(context).size.height / 10 * 0.9
              : MediaQuery.of(context).size.height * 0.445 -
                  MediaQuery.of(context).size.height / 10 * 0.9,
          top: selected
              ? geri == false
                  ? -500
                  : MediaQuery.of(context).size.height * 0.555 -
                      MediaQuery.of(context).size.height / 10 * 0.9
              : MediaQuery.of(context).size.height * 0.555 -
                  MediaQuery.of(context).size.height / 10 * 0.9,
          left: selected
              ? geri == false
                  ? -500
                  : MediaQuery.of(context).size.width / 2 -
                      MediaQuery.of(context).size.height / 10 * 0.9
              : MediaQuery.of(context).size.width / 2 -
                  MediaQuery.of(context).size.height / 10 * 0.9,
//           ,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: CircleBorder(side: BorderSide.none),
                backgroundColor: Colors.white,
                elevation: 30,
                shadowColor: Colors.black),
            onPressed: () {
              setState(() {
                selected = true;
                yeniSelected(selected);
              });
            },
            child: AnimatedContainer(
                clipBehavior: Clip.hardEdge,
                duration: Duration(milliseconds: 250),
                curve: Curves.linear,
                decoration: BoxDecoration(shape: BoxShape.circle),
                height: selected
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.height / 10 * 1.8,
                width: selected
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.height / 10 * 1.8,
                child: selected
                    ? SizedBox()
                    : PageView.builder(
                        itemCount: 41,
                        controller: controller,
                        itemBuilder: (context, index) {
                         if (aci==2){return icon.first;}
                         else if (baslangic == 20) {
                            return icon.last;
                          } else {
                            return icon1[index1 - 1];
                          }
                        },
                      )),
          ),
        ),
      ]),
    );
  }
}
