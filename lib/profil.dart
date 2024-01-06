import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String cinsiyet = 'Diğer';
  DateTime time=DateTime(2000,1,5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffebe4e0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Profil Bilgileri',
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView(
        children:[ Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.hardEdge,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      color: Color(0xff4d48f9),
                    ),
                    child: Icon(
                      Icons.photo_camera,
                      size: 40,
                      color: Color(0xffebe4e0),
                    ),
                    width: 90,
                    height: 90,
                  ),
                  Positioned(
                      left: 65,
                      top: 65,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 30,
                        width: 30,
                        child: Icon(Icons.add),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffa1887f),
                          ),
                          color: Color(0xffebe4e0),
                          borderRadius: BorderRadius.circular(360),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Ad Soyad*',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  Container(
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      width: 335,
                      child: TextField(
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      )),
                  Text(
                    'E-posta Adresi*',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      width: 335,
                      child: TextField(
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      )),
                  Text(
                    'Cep Telefonu*',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 32.5, 0),
                    child: IntlPhoneField(
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        )),
                  ),SizedBox(height: 15,),
                  Text(
                    'Cinsiyet*',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                    width: 335,
                    child: DropdownButton(
                      icon: Icon(
                        Icons.expand_more,
                      ),
                      dropdownColor: Color(0xffebe4e0),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      value: cinsiyet,
                      onChanged: (String? newValue) {
                        setState(
                          () {
                            cinsiyet = newValue!;
                          },
                        );
                      },
                      items: [
                        DropdownMenuItem<String>(
                          child: Text(
                            'Diğer',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          value: 'Diğer',
                        ),
                        DropdownMenuItem<String>(
                          child: Text(
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              'Erkek'),
                          value: 'Erkek',
                        ),
                        DropdownMenuItem<String>(
                          child: Text(
                            'Kadın',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          value: 'Kadın',
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Doğum Tarihi*',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  Container(decoration: BoxDecoration(border:BorderDirectional(bottom: BorderSide(color: Colors.grey))),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      width: 335,
                      child: CupertinoButton(onPressed: (){showCupertinoModalPopup(context: context, builder: (BuildContext context)=>SizedBox(
                        height: 200,child: CupertinoDatePicker(use24hFormat:true , mode: CupertinoDatePickerMode.date,backgroundColor: Colors.white,onDateTimeChanged: (DateTime newTime){setState(() {
                          time=newTime;
                        });},initialDateTime: time,),
                      ),);},child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('${time.day}/${time.month}/${time.year}',style: TextStyle(fontSize: 14,color: Colors.black),),Icon(Icons.calendar_today_outlined,color: Colors.black,size: 14,)],))),
                SizedBox(height: 20,),
                Container(alignment: Alignment.center,child: TextButton(onPressed: (){},child: Text('Güncelle',style: TextStyle(color:Colors.white,fontSize: 16),)),width: 335,height: 55,decoration: BoxDecoration(color:Color(0xff4d48f9),borderRadius: BorderRadius.circular(360) ),),
                SizedBox(height: 30,),
                Row(children: [Text('Hesabını silmek için',style: TextStyle(fontSize: 13,color: Colors.black),),
                  TextButton(onPressed:(){}, child:Text('buraya dokun.',style: TextStyle(fontSize: 14,color:Colors.black,fontWeight: FontWeight.bold),))],)],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ],
        ),]
      ),
    );
  }
}
