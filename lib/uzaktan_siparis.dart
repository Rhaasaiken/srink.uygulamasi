import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'data_base.dart';
import 'metin.dart';
import 'my_container.dart';

class UzaktanSiparis extends StatefulWidget {
  const UzaktanSiparis({super.key});

  @override
  State<UzaktanSiparis> createState() => _UzaktanSiparisState();
}

class _UzaktanSiparisState extends State<UzaktanSiparis> {
  late GoogleMapController mapController;
  final LatLng _odak = LatLng(39.782670, 30.506710);
  _onMapController(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    bool geri = Provider.of<DataBase>(context).geri;
    Function yeniGeri = Provider.of<DataBase>(context).geriDegis;
    bool selected = Provider.of<DataBase>(context).selected;
    Function yeniSelected = Provider.of<DataBase>(context).selectedDegis;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: _odak,
                zoom: 14,
              ),
              onMapCreated: _onMapController,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 27,
            left: MediaQuery.of(context).size.width / 40,
            child: Row(
              children: [
                IconButton(
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
                Text(
                  'Frink Noktası Seç',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 10,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(8) ),
                    width: MediaQuery.of(context).size.width * 9 / 10,
                    height: MediaQuery.of(context).size.height * 1 / 14,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          alignLabelWithHint: false,
                          border: InputBorder.none,
                          labelText: 'Arama',
                          labelStyle: TextStyle(color: kahve, fontSize: 13),
                          hintText: 'Frink noktası ismi ile ara',
                          hintStyle:
                              TextStyle(color: Colors.blueGrey, fontSize: 14)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        MyContainer3(
                          text: 'Şu An Açık',
                        ),
                        MyContainer3(
                          text: 'Önce En Yüksek',
                        ),
                        MyContainer3(
                          text: 'Açık Oturma Alanı',
                        ),
                        MyContainer3(
                          text: 'Otopark',
                        ),
                        MyContainer3(
                          text: 'Wifi',
                        )
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
