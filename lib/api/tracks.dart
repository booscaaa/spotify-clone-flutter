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
                'Bearer BQB2Zy5v0ySHgfOxrdfDQ1U1tnvGP7bIYOqUDVrRSBns8voqGOK0N6TrxZ2DXclKTkdeuPXhOK0u9Se6Cu1zayeAhG2NFz0l9mp42pLpkcUbkFwLwe9EgxrJCLOg3zHhqZOexJvjlSe33IHm2Y4mWbXyOU41arFc4oyketnzFSAhj3JaweX_8u9j2iZjHd8wJpNs3bKD2-phW3EpV43R6glbhneiEO-xoJp8fFiyX4_HHJh1_Yr7czqc6OA0mL04Knhlg0VKWaMHEJKDVA'
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
