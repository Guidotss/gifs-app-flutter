import 'package:gif_app/domain/entitties/gifs_entity.dart';

class GifsModel {
  String title; 
  String imageUrl; 

  GifsModel({
    required this.title,
    required this.imageUrl
  }); 

  factory GifsModel.fromJsonMap(Map<String, dynamic> json) => GifsModel(
    title: json['title'],
    imageUrl: json['url']
  );

  Gifs toGifEntity() => Gifs(imageUrl: imageUrl, title: title); 
}