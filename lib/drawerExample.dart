import 'package:first_app/helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar(),
    );
  }
}

class ApplicationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("My Practice App"),
      backgroundColor: Colors.deepOrange,
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}

