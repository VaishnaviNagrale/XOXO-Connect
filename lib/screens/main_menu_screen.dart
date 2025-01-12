import 'package:flutter/material.dart';
import 'package:mp_tictactoe/responsive/responsive.dart';
import 'package:mp_tictactoe/screens/create_room_screen.dart';
import 'package:mp_tictactoe/screens/join_room_screen.dart';
import 'package:mp_tictactoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({Key? key}) : super(key: key);

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxHeight;
            final width = constraints.maxWidth;
            final isPortrait = height > width;

            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isPortrait ? width * 0.1 : width * 0.2,
                vertical: height * 0.1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Welecome to Game',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: height * 0.05,
                        fontWeight: FontWeight.bold,
                        shadows: const [
                          Shadow(
                            blurRadius: 50,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.08),
                  const Text(
                    'Choose an option below to start playing!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      shadows: [
                        Shadow(
                          blurRadius: 50,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.08),
                  CustomButton(
                    onTap: () => createRoom(context),
                    text: 'Create Room',
                  ),
                  SizedBox(height: height * 0.08),
                  CustomButton(
                    onTap: () => joinRoom(context),
                    text: 'Join Room',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
