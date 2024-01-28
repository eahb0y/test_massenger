class MainChatsResponseEntity{
  final List<ChatEntity>? chats;
  MainChatsResponseEntity({this.chats});
}

class ChatEntity {
  final String? sender;
  final String? recipient;
  final String? senderPhoneNum;
  final String? recipientPhoneNum;
  final String? createAt;
  final String? massage;

  ChatEntity({
    this.massage,
    this.createAt,
    this.recipient,
    this.recipientPhoneNum,
    this.sender,
    this.senderPhoneNum,
  });
}
