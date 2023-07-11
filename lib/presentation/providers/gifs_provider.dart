import 'package:flutter/material.dart';
import 'package:gif_app/config/helpers/get_gif.dart';

class GifsProvider extends ChangeNotifier {
  final String searchGif = ''; 
  List<dynamic> gifs = []; 


  Future<void> searchGifs(String text) async {
    if(text.trim() == "") return; 
    final getGifs = await GetGifs().getGif(text); 
    
    gifs = getGifs;
    notifyListeners(); 
  }


}