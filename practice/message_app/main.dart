import 'classes.dart';

void main() {
  ChatApp mainChat = ChatApp();

  mainChat.addMessage(TextMessage(
      text: "First text message",
      sender: "First User",
      recipent: "Second user",
      timestamp: DateTime.now()));

  mainChat.addMessage(ImageMessage(
      imageUrl: "imageUrl",
      sender: "First User",
      recipent: "Second User",
      timestamp: DateTime.now()));

  mainChat.addMessage(AudioMessage(
      audioUrl: "audioUrl",
      sender: "First User",
      recipent: "Second User",
      timestamp: DateTime.now()));

  mainChat.countOfTotalMessage();
  mainChat.showMessages();
}
