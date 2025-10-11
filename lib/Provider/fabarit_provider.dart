import 'package:flutter/cupertino.dart';

class ItemProvider extends ChangeNotifier{
  int number = 1;
  int? index;
 // void quari(){
 //   int quari = prodected.indexWhere(item)=>item.['img'] == scrcename;
 // }

  void favoridItemAdd(int index){
    faroridItem.add(prodected[index]);
  }


  List <Map<String,String>> faroridItem =[

  ];


  List <Map<String,String>> prodected =[
    {"img":"assets/images/prodracted1.png"},
    {"img":"assets/images/prodracted2.png"},
    {"img":"assets/images/prodracted3.png"},
    {"img":"assets/images/prodracted4.png"},
    {"img":"assets/images/prodracted5.png"},
    {"img":"assets/images/prodracted6.png"},
    {"img":"assets/images/prodracted7.png"},
    {"img":"assets/images/prodracted8.png"},
    {"img":"assets/images/prodracted9.png"},
    {"img":"assets/images/prodracted10.png"},
    {"img":"assets/images/prodracted11.png"},

  ];
  void increment (){
    number=number+1;
    notifyListeners();
  }
  void decrement (){
    if(number>1){
      number=number-1;
    }
    notifyListeners();

  }

}