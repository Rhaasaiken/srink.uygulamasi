import 'package:flutter/material.dart';

import 'metin.dart';
class Buton1 extends StatelessWidget {
  String veri;
  IconData iconn;
  Buton1({required this.iconn,required this.veri});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconn,
        color: kahve,
        size: 28,
      ),
      title: Text(
        veri,
        style: kMetinInce
      ),
    );
  }
}
class Buton2 extends StatelessWidget {
  String veri;
  String veri2;
  IconData iconn;
  Buton2({required this.iconn,required this.veri,required this.veri2});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconn,
        color: kahve,
        size: 28,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            veri,
            style: kMetinInce
          ),
          SizedBox(height: 8,),
          Text(
            veri2,
            style: kMetinInceK
          )
        ],
      ),
    );
  }
}