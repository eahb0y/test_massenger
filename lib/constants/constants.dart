import 'package:cloud_firestore/cloud_firestore.dart';
class Constants{
  static var base = FirebaseFirestore.instance.collection("massages");
}


class BoxKeys{
  static const String userName = "userName";
  static const String userPhoneNum = "phoneNum";
}