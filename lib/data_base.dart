import 'package:flutter/cupertino.dart';

class DataBase with ChangeNotifier{
  bool geri=false;
  double aci=2;
  bool selected=false;
  void geriDondur(){
    geri=!geri;
  }
  void aciDegis(double yeniaci){
    aci=yeniaci;
    notifyListeners();
  }
  void selectedDegis(bool _selected){
    selected=_selected;
    notifyListeners();
  }
  void geriDegis(bool yeniGeri){
    geri=yeniGeri;
    notifyListeners();
  }
}
