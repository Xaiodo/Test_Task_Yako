import 'package:flutter/material.dart';
import 'package:test_task_2/widgets/bottom_navigation_bar.dart';
import 'package:test_task_2/widgets/text_input.dart';

import 'data/data.dart';
import 'widgets/chat_item_widget.dart';
import 'widgets/filter_chats_widget.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<ChatItem> chats = Data().chats;
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _appBar,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(flex: 5, child: TextInputWidget()),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: FilterChatsWidget(
                        color: Color(0xffc8509b),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: chats.length,
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1,
                  ),
                  itemBuilder: (context, index) => ChatItem(
                    imageUrls: chats[index].imageUrls,
                    name: chats[index].name,
                    message: chats[index].message,
                    time: chats[index].time,
                    categories: chats[index].categories,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
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
