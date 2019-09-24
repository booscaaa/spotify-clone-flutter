class Track {
  Album album;
  List<Artist> artists;
  List<String> availableMarkets;
  int discNumber;
  int durationMs;
  bool explicit;
  ExternalIds externalIds;
  ExternalUrls externalUrls;
  String href;
  String id;
  bool isLocal;
  String name;
  int popularity;
  String previewUrl;
  int trackNumber;
  String type;
  String uri;

  Track({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalIds,
    this.externalUrls,
    this.href,
    this.id,
    this.isLocal,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
  });

  factory Track.fromMap(Map<String, dynamic> json) => Track(
        album: json["album"] == null ? null : Album.fromMap(json["album"]),
        artists: json["artists"] == null
            ? null
            : List<Artist>.from(json["artists"].map((x) => Artist.fromMap(x))),
        availableMarkets: json["available_markets"] == null
            ? null
            : List<String>.from(json["available_markets"].map((x) => x)),
        discNumber: json["disc_number"] == null ? null : json["disc_number"],
        durationMs: json["duration_ms"] == null ? null : json["duration_ms"],
        explicit: json["explicit"] == null ? null : json["explicit"],
        externalIds: json["external_ids"] == null
            ? null
            : ExternalIds.fromMap(json["external_ids"]),
        externalUrls: json["external_urls"] == null
            ? null
            : ExternalUrls.fromMap(json["external_urls"]),
        href: json["href"] == null ? null : json["href"],
        id: json["id"] == null ? null : json["id"],
        isLocal: json["is_local"] == null ? null : json["is_local"],
        name: json["name"] == null ? null : json["name"],
        popularity: json["popularity"] == null ? null : json["popularity"],
        previewUrl: json["preview_url"] == null ? null : json["preview_url"],
        trackNumber: json["track_number"] == null ? null : json["track_number"],
        type: json["type"] == null ? null : json["type"],
        uri: json["uri"] == null ? null : json["uri"],
      );

  Map<String, dynamic> toMap() => {
        "album": album == null ? null : album.toMap(),
        "artists": artists == null
            ? null
            : List<dynamic>.from(artists.map((x) => x.toMap())),
        "available_markets": availableMarkets == null
            ? null
            : List<dynamic>.from(availableMarkets.map((x) => x)),
        "disc_number": discNumber == null ? null : discNumber,
        "duration_ms": durationMs == null ? null : durationMs,
        "explicit": explicit == null ? null : explicit,
        "external_ids": externalIds == null ? null : externalIds.toMap(),
        "external_urls": externalUrls == null ? null : externalUrls.toMap(),
        "href": href == null ? null : href,
        "id": id == null ? null : id,
        "is_local": isLocal == null ? null : isLocal,
        "name": name == null ? null : name,
        "popularity": popularity == null ? null : popularity,
        "preview_url": previewUrl == null ? null : previewUrl,
        "track_number": trackNumber == null ? null : trackNumber,
        "type": type == null ? null : type,
        "uri": uri == null ? null : uri,
      };
}

class Album {
  String albumType;
  List<Artist> artists;
  List<String> availableMarkets;
  ExternalUrls externalUrls;
  String href;
  String id;
  List<Image> images;
  String name;
  DateTime releaseDate;
  String releaseDatePrecision;
  int totalTracks;
  String type;
  String uri;

  Album({
    this.albumType,
    this.artists,
    this.availableMarkets,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.totalTracks,
    this.type,
    this.uri,
  });

  factory Album.fromMap(Map<String, dynamic> json) => Album(
        albumType: json["album_type"] == null ? null : json["album_type"],
        artists: json["artists"] == null
            ? null
            : List<Artist>.from(json["artists"].map((x) => Artist.fromMap(x))),
        availableMarkets: json["available_markets"] == null
            ? null
            : List<String>.from(json["available_markets"].map((x) => x)),
        externalUrls: json["external_urls"] == null
            ? null
            : ExternalUrls.fromMap(json["external_urls"]),
        href: json["href"] == null ? null : json["href"],
        id: json["id"] == null ? null : json["id"],
        images: json["images"] == null
            ? null
            : List<Image>.from(json["images"].map((x) => Image.fromMap(x))),
        name: json["name"] == null ? null : json["name"],
        releaseDate: json["release_date"] == null
            ? null
            : DateTime.parse(json["release_date"]),
        releaseDatePrecision: json["release_date_precision"] == null
            ? null
            : json["release_date_precision"],
        totalTracks: json["total_tracks"] == null ? null : json["total_tracks"],
        type: json["type"] == null ? null : json["type"],
        uri: json["uri"] == null ? null : json["uri"],
      );

  Map<String, dynamic> toMap() => {
        "album_type": albumType == null ? null : albumType,
        "artists": artists == null
            ? null
            : List<dynamic>.from(artists.map((x) => x.toMap())),
        "available_markets": availableMarkets == null
            ? null
            : List<dynamic>.from(availableMarkets.map((x) => x)),
        "external_urls": externalUrls == null ? null : externalUrls.toMap(),
        "href": href == null ? null : href,
        "id": id == null ? null : id,
        "images": images == null
            ? null
            : List<dynamic>.from(images.map((x) => x.toMap())),
        "name": name == null ? null : name,
        "release_date": releaseDate == null
            ? null
            : "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "release_date_precision":
            releaseDatePrecision == null ? null : releaseDatePrecision,
        "total_tracks": totalTracks == null ? null : totalTracks,
        "type": type == null ? null : type,
        "uri": uri == null ? null : uri,
      };
}

class Artist {
  ExternalUrls externalUrls;
  String href;
  String id;
  String name;
  String type;
  String uri;

  Artist({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  factory Artist.fromMap(Map<String, dynamic> json) => Artist(
        externalUrls: json["external_urls"] == null
            ? null
            : ExternalUrls.fromMap(json["external_urls"]),
        href: json["href"] == null ? null : json["href"],
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        type: json["type"] == null ? null : json["type"],
        uri: json["uri"] == null ? null : json["uri"],
      );

  Map<String, dynamic> toMap() => {
        "external_urls": externalUrls == null ? null : externalUrls.toMap(),
        "href": href == null ? null : href,
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "type": type == null ? null : type,
        "uri": uri == null ? null : uri,
      };
}

class ExternalUrls {
  String spotify;

  ExternalUrls({
    this.spotify,
  });

  factory ExternalUrls.fromMap(Map<String, dynamic> json) => ExternalUrls(
        spotify: json["spotify"] == null ? null : json["spotify"],
      );

  Map<String, dynamic> toMap() => {
        "spotify": spotify == null ? null : spotify,
      };
}

class Image {
  int height;
  String url;
  int width;

  Image({
    this.height,
    this.url,
    this.width,
  });

  factory Image.fromMap(Map<String, dynamic> json) => Image(
        height: json["height"] == null ? null : json["height"],
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
      );

  Map<String, dynamic> toMap() => {
        "height": height == null ? null : height,
        "url": url == null ? null : url,
        "width": width == null ? null : width,
      };
}

class ExternalIds {
  String isrc;

  ExternalIds({
    this.isrc,
  });

  factory ExternalIds.fromMap(Map<String, dynamic> json) => ExternalIds(
        isrc: json["isrc"] == null ? null : json["isrc"],
      );

  Map<String, dynamic> toMap() => {
        "isrc": isrc == null ? null : isrc,
      };
}
