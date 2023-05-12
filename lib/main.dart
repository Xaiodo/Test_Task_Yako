import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _appBar,
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }

  final AppBar _appBar = AppBar(
    centerTitle: true,
    title: const Text('Chat'),
    backgroundColor: const Color(0xff0a2a3f),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.add_circle_outline_sharp),
      ),
    ],
    leading: Container(
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: const CircleAvatar(
        backgroundImage: NetworkImage(
          'https://cdn.discordapp.com/attachments/1046399512526205038/1046414012713283594/p.jpg',
        ),
      ),
    ),
  );
}
