import 'package:hive/hive.dart';
import 'package:test_massenger/constants/constants.dart';

class LocalSource{
  final Box<dynamic> box;
  LocalSource(this.box);


  void setUserName(String name){
    box.put(BoxKeys.userName, name);
  }

  String getUserName(){
    return box.get(BoxKeys.userName) ?? "";
  }

  void setPhoneNum(String number){
    box.put(BoxKeys.userPhoneNum, number);
  }

  String getPhoneNum(){
    return box.get(BoxKeys.userPhoneNum) ?? "";
  }
}