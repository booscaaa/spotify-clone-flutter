import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spotifyclone/api/playlists.dart';
import 'package:spotifyclone/model/playlist.dart';
import 'package:spotifyclone/model/track.dart';

class PlaylistController extends BlocBase {
  List<Playlist> _playlistsLineOne = new List();
  var _playlistControllerLineOne = BehaviorSubject<List<Playlist>>();

  List<Playlist> _playlistsLineTwo = new List();
  var _playlistControllerLineTwo = BehaviorSubject<List<Playlist>>();

  Stream<List<Playlist>> get playlistsLineOne => _playlistControllerLineOne.stream;
  Stream<List<Playlist>> get playlistsLineTwo => _playlistControllerLineTwo.stream;

  PlaylistController() {
    getPlaylst();
  }

  getPlaylst() async {
    PlaylistAPI pApi = new PlaylistAPI();
    _playlistsLineOne = await pApi.getPlaylist(10);
    _playlistsLineTwo = await pApi.getPlaylist(23);
    _playlistControllerLineOne.sink.add(_playlistsLineOne);
    _playlistControllerLineTwo.sink.add(_playlistsLineTwo);
  }

  @override
  void dispose() {
    _playlistControllerLineOne.close();
    _playlistControllerLineTwo.close();
    super.dispose();
  }
}
