import 'package:flutter/widgets.dart';
import 'package:w7_small_homework/data/repositories/songs/song_repository.dart';
import 'package:w7_small_homework/model/songs/song.dart';
import 'package:w7_small_homework/ui/states/player_state.dart';

class LibraryViewModel extends ChangeNotifier {
  final PlayerState playerState;
  final SongRepository songRepository;
  List<Song> _songs = [];

  List<Song> get songs => _songs;

  LibraryViewModel({required this.playerState, required this.songRepository}) {
    init();
  }

  void init() {
    _songs = songRepository.fetchSongs();
  }

  Song? get currentSong => playerState.currentSong;

  bool isPlaying(Song song) {
    return playerState.currentSong == song;
  }

  void play(Song song) {
    playerState.start(song);
  }
}
