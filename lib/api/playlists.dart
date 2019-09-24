import 'dart:io';

import 'package:dio/dio.dart';
import 'package:spotifyclone/model/playlist.dart';

class PlaylistAPI {
  Future<List<Playlist>> getPlaylist(int offset) async {
    try {
      Response response = await Dio().get(
          "https://api.spotify.com/v1/me/playlists?limit=10&offset=${offset.toString()}",
          options: Options(headers: {
            HttpHeaders.authorizationHeader:
                'Bearer BQB4ajVJV2cTrRd2JKEDA-tgCKwp69J9y-KHc1dc5wIw6q4_3YwBSV52Qw0RPrZjL8J208vOxkhgVAKDEiM6eD8G6x2bE5CJQnMw18yHqxuZ6oNNrKAurLGIw-0wE5eHPHYWhGrlBJbm1WF_-sj6vTh1nLrrs9XhlGpFxF6uWXM9DPEpGRJlQqpPXgK7-Q060qcP3KZ-gLsJvL6stGrpXkeyKTlMP-cQMeFlmbQT_8P0Z3fH677ek6ZzNPM_KTv-FczBf5x9CWrfA1PsJw'
          }));

      if (response.statusCode == 200) {
        return response.data["items"].map<Playlist>((track) {
          return Playlist.fromMap(track);
        }).toList();
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
