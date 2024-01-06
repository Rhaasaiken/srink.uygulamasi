import 'package:flutter/material.dart';
import 'package:srink/My_Scaffold.dart';
import 'package:srink/metin.dart';

class Uyelik extends StatelessWidget {
  const Uyelik({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      titlee: 'Üyeliğim',
      widgett: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Üyelik detayları',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Stack(
                      clipBehavior: Clip.hardEdge,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 95,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffd1c8c3),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Basic',
                                      style: TextStyle(
                                          color: mavi,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Aylık filtre kahve',
                                    )
                                  ],
                                ),
                                Text(
                                  '449t / Ay',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            left: 230,
                            bottom: 75,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: mavi,
                                  borderRadius: BorderRadius.circular(360)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 3),
                                child: Text(
                                  'Mevcut Paket',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  child: Row(
                children: [
                  Text(
                    'Üyeliğini iptal etmek için',
                    style: TextStyle(color: kahve, fontSize: 13),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'buraya tıkla',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              )),
            ],
          )),
    );
  }
}
