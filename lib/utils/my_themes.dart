import 'package:flutter/material.dart';
import 'package:mp_tictactoe/utils/colors.dart';

class MyThemes extends StatelessWidget{
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: bgColor,
    colorScheme: const ColorScheme.dark(),
    primaryColor: Colors.blueAccent,
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    primaryColor: Colors.blueAccent,
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  );

  const MyThemes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}