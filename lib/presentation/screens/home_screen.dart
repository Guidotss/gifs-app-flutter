

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gifs App", style: TextStyle(fontSize:30, fontWeight: FontWeight.w600 )),
      ),
      
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Placeholder(),
              Text("Hola")
            ],
          ),
        ),
      )
    ); 
  }
}