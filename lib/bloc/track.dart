import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spotifyclone/api/tracks.dart';
import 'package:spotifyclone/model/track.dart';

class TrackController extends BlocBase {
  List<Track> _tracks = new List();
  var _trackController = BehaviorSubject<List<Track>>();

  Stream<List<Track>> get tracks => _trackController.stream;

  TrackController() {
    getTracks();
  }

  getTracks() async {
    TracksAPI tApi = new TracksAPI();
    _tracks = await tApi.getTracks(["7ouMYWpwJ422jRcDASZB7P","4VqPOruhp5EdPBeR92t6lQ","2takcwOaAZWiXQijPHIx7B"]);
    print(_tracks);
    _trackController.sink.add(_tracks);
  }

  @override
  void dispose() {
    _trackController.close();
    super.dispose();
  }
}
