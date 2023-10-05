



import 'package:wallpaper_task/model/photos/photos_model.dart';

class DataModal {
  String? next_page;
  int? page;
  int? per_page;
  List<Photo_Model>? photos;

  int? total_results;

  DataModal(
      { this.next_page,
       this.page,
       this.per_page,
       this.photos,
       this.total_results});

  factory DataModal.fromjson(Map<String, dynamic> json) {
    List<Photo_Model> mPhoto = [];

    for (Map<String, dynamic> eachphoto in json['photos']) {
      mPhoto.add(Photo_Model.fromjson(eachphoto));
    }
    return DataModal(
        next_page: json['next_page'],
        page: json['page'],
        per_page: json['per_page'],
        photos: mPhoto,
        total_results: json['total_results']);
  }
}
