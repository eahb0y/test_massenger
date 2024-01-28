import 'package:test_massenger/features/main/domain/entity/main_cahts_response_entity.dart';

class MainChatsResponse {
  MainChatsResponse({
    this.data,
    this.status,
  });

  MainChatsResponse.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    status = json['status'];
  }

  Data? data;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['status'] = status;
    return map;
  }

  MainChatsResponseEntity toEntity() {
    print("stateeeeee :: ${data?.user?[0].sender}");
    List<ChatEntity> chatsList = [];
    data?.user?.forEach((element) {
      chatsList.add(ChatEntity(
          recipient: element.resipient,
          createAt: element.createAt,
          massage: element.massage,
          recipientPhoneNum: element.resipientNum,
          sender: element.sender,
          senderPhoneNum: element.senderNum));
    });
    return MainChatsResponseEntity(
      chats: chatsList,
    );
  }
}

class Data {
  Data({
    this.user,
  });

  Data.fromJson(dynamic json) {
    if (json['user'] != null) {
      user = [];
      json['user'].forEach((v) {
        user?.add(User.fromJson(v));
      });
    }
  }

  List<User>? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class User {
  User({
    this.sender,
    this.resipient,
    this.senderNum,
    this.resipientNum,
    this.createAt,
    this.massage,
  });

  User.fromJson(dynamic json) {
    sender = json['sender'];
    resipient = json['resipient'];
    senderNum = json['sender_num'];
    resipientNum = json['resipient_num'];
    createAt = json['create_at'];
    massage = json['massage'];
  }

  String? sender;
  String? resipient;
  String? senderNum;
  String? resipientNum;
  String? createAt;
  String? massage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sender'] = sender;
    map['resipient'] = resipient;
    map['sender_num'] = senderNum;
    map['resipient_num'] = resipientNum;
    map['create_at'] = createAt;
    map['massage'] = massage;
    return map;
  }
}
