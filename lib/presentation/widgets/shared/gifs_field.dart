import 'package:flutter/material.dart';

class GifsFiel extends StatelessWidget {
  
  final ValueChanged<String> onValue; 

  const GifsFiel({
    super.key,
    required this.onValue,
  });


  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.transparent)
    ); 

    final inputDecoration = InputDecoration(
      hintText: "Search gifs...",
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      contentPadding: const EdgeInsets.all(20) ,       
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_rounded),
        onPressed: () {
          final textValue = textController.value.text; 
          onValue(textValue); 
          textController.clear(); 
        }
      )
    ); 

    return TextField(
      decoration: inputDecoration,
      controller: textController,
      onSubmitted: (value) {
        onValue(value); 
        textController.clear(); 
      },
    ); 
  }
} 