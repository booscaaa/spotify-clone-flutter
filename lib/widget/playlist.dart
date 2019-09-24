import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:spotifyclone/model/playlist.dart';

class PlaylistWidget extends StatelessWidget {
  final Playlist playlist;

  PlaylistWidget({this.playlist});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          prefix0.Image.network(
            this.playlist.images[0].url,
            fit: BoxFit.contain,
          ),
          Text(
            this.playlist.name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
