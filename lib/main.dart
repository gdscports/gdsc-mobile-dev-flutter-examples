import 'package:flutter/material.dart';
import 'package:gdsc_counter_flutter/cubitcounter.dart';
import 'package:gdsc_counter_flutter/helloworld.dart';
import 'package:gdsc_counter_flutter/simpleexample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: SafeArea(
          child: HelloWorld(),
          // child: SimpleExample(),
          // child: CubitCounterWidget()
        ),
      ),
    );
  }
}
