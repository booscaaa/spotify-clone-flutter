import 'dart:io';

import 'package:dio/dio.dart';
import 'package:spotifyclone/model/track.dart';

class TracksAPI {
  Future<List<Track>> getTracks(List<String> ids) async {
    try {
      Response response = await Dio().get(
          "https://api.spotify.com/v1/tracks?ids=${ids.join(",")}" ,
          options: Options(headers: {
            HttpHeaders.authorizationHeader:
                'Bearer BQB4ajVJV2cTrRd2JKEDA-tgCKwp69J9y-KHc1dc5wIw6q4_3YwBSV52Qw0RPrZjL8J208vOxkhgVAKDEiM6eD8G6x2bE5CJQnMw18yHqxuZ6oNNrKAurLGIw-0wE5eHPHYWhGrlBJbm1WF_-sj6vTh1nLrrs9XhlGpFxF6uWXM9DPEpGRJlQqpPXgK7-Q060qcP3KZ-gLsJvL6stGrpXkeyKTlMP-cQMeFlmbQT_8P0Z3fH677ek6ZzNPM_KTv-FczBf5x9CWrfA1PsJw'
          }));

      if (response.statusCode == 200) {
        print('asdas');
        return response.data["tracks"].map<Track>((track) {
            return Track.fromMap(track);
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
