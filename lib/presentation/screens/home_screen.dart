

import 'package:flutter/material.dart';
import 'package:gif_app/presentation/providers/gifs_provider.dart';
import 'package:gif_app/presentation/widgets/gifs/gifs_item.dart';
import 'package:gif_app/presentation/widgets/shared/gifs_field.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gifs App", style: TextStyle(fontSize:30, fontWeight: FontWeight.w600 )),
      ),
      
      body: _GifsView()
    ); 
  }
}

class _GifsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final gifsProvider = context.watch<GifsProvider>(); 

    return SafeArea(
      child: Padding(
        padding:const  EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: gifsProvider.gifs.length,
                itemBuilder: (context, index) {
                  final gif = gifsProvider.gifs[index]; 
                  return GifsItem(
                    gifUrl: gif.imageUrl
                  );
                },
              ),
            ),

            GifsFiel(
              onValue: gifsProvider.searchGifs,
            )
          ],
        ),
      ),
    );
  }
}