abstract class Playable {
  void play();
  void pause();
  void stop();
}

class MediaFile implements Playable {
  String title;
  int duration;
  String filepath;
  MediaFile({
    required this.title,
    required this.duration,
    required this.filepath,
  });

  @override
  void pause() {
    print("$title has paused");
  }

  @override
  void play() {
    print("$title is playing");
  }

  @override
  void stop() {
    print("$title has stoped");
  }
}

mixin Shuffleable {
  shufflePlaylist(List list) {
    list.shuffle();
  }
}

class Playlist with Shuffleable {
  String name;
  List<MediaFile> mediafiles;

  Playlist({
    required this.name,
    required this.mediafiles,
  });

  void playPlayList() {
    for (var element in mediafiles) {
      element.play();
    }
  }
}
