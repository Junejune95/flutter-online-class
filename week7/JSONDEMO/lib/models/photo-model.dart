class PhotoLists {
  List<PhotoModel> photos;
  PhotoLists({this.photos});
  factory PhotoLists.fromJson(List<dynamic> photoLists) {
    final tempPhotos=photoLists.map((e)=>PhotoModel.fromJson(e)).toList();

    return PhotoLists(photos: tempPhotos);
  }
}

class PhotoModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  PhotoModel({
    this.albumId,
    this.id,
    this.title,
    this.thumbnailUrl,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
        albumId: json['albumId'],
        id: json['id'],
        title: json['title'],
        thumbnailUrl: json['thumbnailUrl']);
  }
}
