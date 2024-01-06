import 'package:flutter/material.dart';
import 'package:to_do_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      darkTheme: ThemeData.dark(),
      home: home(),
    );
  }
}
