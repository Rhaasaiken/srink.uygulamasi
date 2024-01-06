import 'package:flutter/material.dart';
import 'package:srink/but%C4%B1nStyle.dart';

import 'metin.dart';

class Ayarlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          },
        ),
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Ayarlar',
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Buton1(
                      iconn: Icons.notifications_none_outlined,
                      veri: 'Bildirim Tercihleri'),
                  Buton2(
                      iconn: Icons.language,
                      veri: 'Dil Seçimi',
                      veri2: 'Türkçe'),
                ],
              ),
            ),
          ),
          Container(
              width: 350,
              child: Divider(
                height: 1,
                color: Colors.grey,
              )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Buton1(iconn: Icons.help_outline, veri: 'Yardım'),
                  Buton2(
                      iconn: Icons.grid_view,
                      veri: 'Frink Uygulaması Hakkında',
                      veri2: '14.4'),
                  Buton1(iconn: Icons.phone_in_talk_outlined, veri: 'İletişim')
                ],
              ),
            ),
            flex: 5,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xffd1c8c3)),
            onPressed: () {},
            child: Container(
                height: 60,
                color: Color(0xffd1c8c3),
                child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.do_not_disturb_alt_rounded,
                          color: kahve,
                          size: 28,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Çıkış Yap,',
                          style: kMetinInce,
                        )
                      ],
                    ))),
          ),
        ],
      ),
    );
  }
}
