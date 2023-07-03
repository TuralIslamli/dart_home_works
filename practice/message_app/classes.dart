class Message {
  String sender;
  String recipent;
  DateTime timestamp;

  Message({
    required this.sender,
    required this.recipent,
    required this.timestamp,
  });
}

class ChatApp<T extends Message> {
  List<T> messages = [];

  void showMessages() {
    print("-" * 10);

    for (Message message in messages) {
      print('''Sender: ${message.sender}
Recipent: ${message.recipent}
Time: ${message.timestamp}''');
      if (message is TextMessage) {
        print("Text: ${message.text}");
      } else if (message is ImageMessage) {
        print("Image: ${message.imageUrl}");
      } else if (message is AudioMessage) {
        print("Audio: ${message.audioUrl}");
      }
    print("-" * 10);
    }
  }

  void addMessage(T message) {
    messages.add(message);
  }

  void countOfTotalMessage() {
    print(messages.length);
  }
}

class TextMessage extends Message {
  String text;

  TextMessage({
    required this.text,
    required super.sender,
    required super.recipent,
    required super.timestamp,
  });
}

class ImageMessage extends Message {
  String imageUrl;

  ImageMessage({
    required this.imageUrl,
    required super.sender,
    required super.recipent,
    required super.timestamp,
  });
}

class AudioMessage extends Message {
  String audioUrl;

  AudioMessage({
    required this.audioUrl,
    required super.sender,
    required super.recipent,
    required super.timestamp,
  });
}
