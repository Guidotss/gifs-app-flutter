import 'package:flutter/material.dart';
import 'package:gif_app/presentation/providers/gifs_provider.dart';
import 'package:gif_app/presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GifsProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Gif App",
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen()
      ),
    );
  }
}
