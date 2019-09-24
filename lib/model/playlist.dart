import 'dart:convert';

class Playlist {
  bool collaborative;
  ExternalUrls externalUrls;
  String href;
  String id;
  List<Image> images;
  String name;
  Owner owner;
  dynamic primaryColor;
  bool public;
  String snapshotId;
  Tracks tracks;
  String type;
  String uri;

  Playlist({
    this.collaborative,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.owner,
    this.primaryColor,
    this.public,
    this.snapshotId,
    this.tracks,
    this.type,
    this.uri,
  });

  factory Playlist.fromJson(String str) => Playlist.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Playlist.fromMap(Map<String, dynamic> json) => Playlist(
        collaborative:
            json["collaborative"] == null ? null : json["collaborative"],
        externalUrls: json["external_urls"] == null
            ? null
            : ExternalUrls.fromMap(json["external_urls"]),
        href: json["href"] == null ? null : json["href"],
        id: json["id"] == null ? null : json["id"],
        images: json["images"] == null
            ? null
            : List<Image>.from(json["images"].map((x) => Image.fromMap(x))),
        name: json["name"] == null ? null : json["name"],
        owner: json["owner"] == null ? null : Owner.fromMap(json["owner"]),
        primaryColor: json["primary_color"],
        public: json["public"] == null ? null : json["public"],
        snapshotId: json["snapshot_id"] == null ? null : json["snapshot_id"],
        tracks: json["tracks"] == null ? null : Tracks.fromMap(json["tracks"]),
        type: json["type"] == null ? null : json["type"],
        uri: json["uri"] == null ? null : json["uri"],
      );

  Map<String, dynamic> toMap() => {
        "collaborative": collaborative == null ? null : collaborative,
        "external_urls": externalUrls == null ? null : externalUrls.toMap(),
        "href": href == null ? null : href,
        "id": id == null ? null : id,
        "images": images == null
            ? null
            : List<dynamic>.from(images.map((x) => x.toMap())),
        "name": name == null ? null : name,
        "owner": owner == null ? null : owner.toMap(),
        "primary_color": primaryColor,
        "public": public == null ? null : public,
        "snapshot_id": snapshotId == null ? null : snapshotId,
        "tracks": tracks == null ? null : tracks.toMap(),
        "type": type == null ? null : type,
        "uri": uri == null ? null : uri,
      };
}

class ExternalUrls {
  String spotify;

  ExternalUrls({
    this.spotify,
  });

  factory ExternalUrls.fromJson(String str) =>
      ExternalUrls.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ExternalUrls.fromMap(Map<String, dynamic> json) => ExternalUrls(
        spotify: json["spotify"] == null ? null : json["spotify"],
      );

  Map<String, dynamic> toMap() => {
        "spotify": spotify == null ? null : spotify,
      };
}

class Image {
  dynamic height;
  String url;
  dynamic width;

  Image({
    this.height,
    this.url,
    this.width,
  });

  factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Image.fromMap(Map<String, dynamic> json) => Image(
        height: json["height"],
        url: json["url"] == null ? null : json["url"],
        width: json["width"],
      );

  Map<String, dynamic> toMap() => {
        "height": height,
        "url": url == null ? null : url,
        "width": width,
      };
}

class Owner {
  String displayName;
  ExternalUrls externalUrls;
  String href;
  String id;
  String type;
  String uri;

  Owner({
    this.displayName,
    this.externalUrls,
    this.href,
    this.id,
    this.type,
    this.uri,
  });

  factory Owner.fromJson(String str) => Owner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Owner.fromMap(Map<String, dynamic> json) => Owner(
        displayName: json["display_name"] == null ? null : json["display_name"],
        externalUrls: json["external_urls"] == null
            ? null
            : ExternalUrls.fromMap(json["external_urls"]),
        href: json["href"] == null ? null : json["href"],
        id: json["id"] == null ? null : json["id"],
        type: json["type"] == null ? null : json["type"],
        uri: json["uri"] == null ? null : json["uri"],
      );

  Map<String, dynamic> toMap() => {
        "display_name": displayName == null ? null : displayName,
        "external_urls": externalUrls == null ? null : externalUrls.toMap(),
        "href": href == null ? null : href,
        "id": id == null ? null : id,
        "type": type == null ? null : type,
        "uri": uri == null ? null : uri,
      };
}

class Tracks {
  String href;
  int total;

  Tracks({
    this.href,
    this.total,
  });

  factory Tracks.fromJson(String str) => Tracks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Tracks.fromMap(Map<String, dynamic> json) => Tracks(
        href: json["href"] == null ? null : json["href"],
        total: json["total"] == null ? null : json["total"],
      );

  Map<String, dynamic> toMap() => {
        "href": href == null ? null : href,
        "total": total == null ? null : total,
      };
}
