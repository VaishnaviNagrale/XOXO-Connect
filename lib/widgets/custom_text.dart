import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final List<Shadow> shadows;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const CustomText({
    Key? key,
    required this.shadows,
    required this.text,
    required this.fontSize,
    this.fontWeight = FontWeight.bold,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          shadows: shadows,
        ),
      ),
    );
  }
}
