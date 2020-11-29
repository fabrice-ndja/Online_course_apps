import 'package:Online_course_apps/pages/NavigationBar.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() async {
  // Initialiser le projet
  WidgetsFlutterBinding.ensureInitialized();
  // Ajouter le package Adaptive (chageur de theme Noit & blanc)
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode savedThemeMode;
  MyApp({this.savedThemeMode});
  // Ce widget permet de faire la route de ton application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      // Configuration du theme Blanc
      light: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
          accentColor: Colors.amber,
          primaryColor: Colors.green,
          ),
      // Configuration du theme Noir
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        accentColor: Colors.green,
        primaryColor: Colors.amber,
      ),
      builder: (
        lightTheme,
        darkTheme,
      ) =>
          MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fapps',
        home: SplashScreen(),
        theme: lightTheme,
        darkTheme: darkTheme,
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.system,
    );
  }
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      home: NavigationBar(),
      duration: 500,
      imageSize: 100,
      imageSrc: "assets/icones/bateau.png",
      text: "Formations App",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      colors: [
        Colors.orange,
        Colors.blue,
        Colors.green,
      ],
      backgroundColor: Colors.white,
    );
  }
}
    /// Logo with animated Colorize text
