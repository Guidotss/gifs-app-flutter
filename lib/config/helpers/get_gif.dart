import 'package:dio/dio.dart';
import 'package:gif_app/domain/entitties/gifs_entity.dart';
import 'package:gif_app/infrastructure/gifs_model.dart';

class GetGifs {
  final _dio = Dio(); 

  Future<List<Gifs>> getGif(String text) async {
    final response = await _dio.get(
      "https://api.giphy.com/v1/gifs/search?api_key=6C3bvAH3R6vNB9RiX94nBE4yBJJFRHmw&q=$text&limit=25&offset=0&rating=g&lang=en&bundle=messaging_non_clips"
    ); 
    final gifs = GifsModel.fromJson(response.data); 
    return gifs.data.map((gifs) => Gifs(
      imageUrl: gifs.images.original.url,
      title: gifs.title
    )).toList(); 
  }
}