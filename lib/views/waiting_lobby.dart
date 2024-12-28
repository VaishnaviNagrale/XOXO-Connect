import 'package:flutter/material.dart';
import 'package:mp_tictactoe/provider/room_data_provider.dart';
import 'package:mp_tictactoe/responsive/responsive.dart';
import 'package:mp_tictactoe/widgets/custom_text.dart';
import 'package:mp_tictactoe/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class WaitingLobby extends StatefulWidget {
  const WaitingLobby({Key? key}) : super(key: key);

  @override
  State<WaitingLobby> createState() => _WaitingLobbyState();
}

class _WaitingLobbyState extends State<WaitingLobby> {
  late TextEditingController roomIdController;

  @override
  void initState() {
    super.initState();
    roomIdController = TextEditingController(
      text:
          Provider.of<RoomDataProvider>(context, listen: false).roomData['_id'],
    );
  }

  @override
  void dispose() {
    super.dispose();
    roomIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                shadows: [
                  Shadow(
                    blurRadius: 40,
                    color: Colors.blue,
                  ),
                ],
                text: 'Create Room',
                fontSize: 36,
              ),
                const SizedBox(height: 36),
                const Text(
                  'Waiting for a player to join...',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                CustomTextField(
                  controller: roomIdController,
                  hintText: '',
                  isReadOnly: true,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // Add any action you want to perform on button press
                  },
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
