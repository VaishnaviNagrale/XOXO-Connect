import 'package:flutter/material.dart';
import 'package:mp_tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isReadOnly;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.isReadOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        readOnly: isReadOnly,
        controller: controller,
        decoration: InputDecoration(
          fillColor: bgColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          isDense: true,
          hintMaxLines: 2,
        ),
      ),
    );
  }
}
