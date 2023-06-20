import 'player.dart';

void main() {
  MediaFile firstSong = MediaFile(
      title: "First song",
      duration: 180,
      filepath: "https://www.musics.com/knkjhdvdkhgdk");

  MediaFile secondSong = MediaFile(
      title: "Second song",
      duration: 255,
      filepath: "https://www.musics.com/gqwgjhdbds");

  MediaFile thirdSong = MediaFile(
      title: "Third song",
      duration: 128,
      filepath: "https://www.musics.com/femiu3r42gqgefzdfs");

  Playlist myPlaylist = Playlist(
      name: "My playlist", mediafiles: [firstSong, secondSong, thirdSong]);

  myPlaylist.shufflePlaylist(myPlaylist.mediafiles);
  myPlaylist.playPlayList();
}
