import 'package:test_massenger/features/main/domain/entity/main_cahts_response_entity.dart';

class TestResponse {
  TestResponse({
      this.sender, 
      this.resipient, 
      this.senderNum, 
      this.resipientNum, 
      this.createAt, 
      this.massage,});

  TestResponse.fromJson(dynamic json) {
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

  MainChatsResponseEntity toEntity() {
    List<ChatEntity> chatsList = [];
    chatsList.add(ChatEntity(
        recipient: resipient,
        createAt: createAt,
        massage: massage,
        recipientPhoneNum: resipientNum,
        sender: sender,
        senderPhoneNum: senderNum));
    return MainChatsResponseEntity(
      chats: chatsList,
    );
  }

}