import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  const IconTextRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}
