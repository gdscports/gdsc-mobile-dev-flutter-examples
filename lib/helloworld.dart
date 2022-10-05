import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.language,
          color: Colors.blue,
        ),
        Text("Hello, World!")
      ],
    );
  }
}
