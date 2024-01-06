import 'package:flutter/material.dart';

class My_TextFormField extends StatelessWidget {
  String baslik;
  My_TextFormField({required this.baslik});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(baslik),
            TextField(),
          ],
        ));
  }
}
