import 'package:flutter/material.dart';
import 'package:media_player_app/presentation/details/details_screen.dart';
import 'package:media_player_app/presentation/home/home_screen.dart';
import 'package:media_player_app/presentation/intro/intro_screen.dart';
import 'package:media_player_app/presentation/splash/splash_screen.dart';
import 'package:media_player_app/provider/bottom_provider/bottom_provider.dart';
import 'package:media_player_app/provider/slider_provider/slider_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AudioPlayerProvider(),
        ),
      ],
      child: const MusicApp(),
    ),
  );
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
        '/1': (context) => const IntroScreen(),
      },
    );
  }
}
