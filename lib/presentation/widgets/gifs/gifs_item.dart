import 'package:flutter/material.dart';


class GifsItem extends StatelessWidget {
  final String gifUrl; 
  const GifsItem({
    super.key,
    required this.gifUrl
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Image.network(
          gifUrl,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if(loadingProgress == null) return child; 
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
        const SizedBox(height: 10),
      ]
    ); 
  }
}