import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:spotifyclone/model/track.dart';

class TrackWidget extends StatelessWidget {
  final Track track;

  TrackWidget({this.track});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            prefix0.Image.network(this.track.album.images[0].url),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.track.album.name,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  this.track.artists.map<String>((name) {
                    return name.name + " ";
                  }).toString().replaceAll("(", "").replaceAll(")", ""),
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            )
          ]),
    );
  }
}
