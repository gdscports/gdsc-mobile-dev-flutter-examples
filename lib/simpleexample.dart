import 'package:flutter/material.dart';
import 'package:gdsc_counter_flutter/icontextrow.dart';

class SimpleExample extends StatefulWidget {
  const SimpleExample({Key? key}) : super(key: key);

  @override
  State<SimpleExample> createState() => _SimpleExampleState();
}

class _SimpleExampleState extends State<SimpleExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () => setState(() => counter -= 1),
            child: const IconTextRow(icon: Icons.remove, text: "Subtract"),
          ),
          const Spacer(),
          Text("Current Value: $counter"),
          const Spacer(),
          MaterialButton(
            onPressed: () => setState(() => counter += 1),
            child: const IconTextRow(icon: Icons.add, text: "Add"),
          ),
        ],
      ),
    );
  }
}
