import 'package:dio/dio.dart';
import 'package:gif_app/domain/entitties/gifs_entity.dart';

class GetGifs {
  final _dio = Dio(); 

  Future<Gifs> getGif(String text) async {
    final response  = await _dio.get("https://api.giphy.com/v1/gifs/search?api_key=6C3bvAH3R6vNB9RiX94nBE4yBJJFRHmw&q=$text&limit=25&offset=0&rating=g&lang=en&bundle=messaging_non_clips"); 
    throw UnimplementedError(); 
  }

}