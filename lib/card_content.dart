import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class cardContent extends StatelessWidget {
  const cardContent({super.key, required this.text, this.icon});
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(height: 15.0),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
