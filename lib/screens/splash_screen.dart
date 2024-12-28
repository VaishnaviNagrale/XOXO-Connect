import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mp_tictactoe/screens/main_menu_screen.dart';
import 'package:mp_tictactoe/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, MainMenuScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/tic-tac-toe.png',
                    height: constraints.maxHeight * 0.3,
                    width: constraints.maxWidth * 0.5,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
