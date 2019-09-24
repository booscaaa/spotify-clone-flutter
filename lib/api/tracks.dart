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
                'Bearer BQAFqWvFkln0yq1n90gd1tLu0Bu9At4Y-Behy88rppN2iOb7TG9DiLtRFnyVWZxnDMUKkwIOeadkFL1YW4ihB0oterfPSAYH7W-vw4_wAfK1rV-C6XYgQCrK519MZSrfVhzdg-I76iN3d8QpmeM1QpIhKYdrvRrQuZqKFWpO-eez2ONJJjj15AGYvaMFKaNSKoK_7prePl_rdm4ILALYiP3eLNjI5XjgI9zxIwJ0m05-PNPnMhMQxLyD6fqEKEhPJPhCt3cu4aSq-MPi6w'
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
