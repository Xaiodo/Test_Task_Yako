import 'package:test_task_2/models/category.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_item_widget.dart';

class Data {
  List<ChatItem> get chats => const [
        ChatItem(
          imageUrl:
              'https://cdn.discordapp.com/attachments/1046399512526205038/1046414012713283594/p.jpg',
          name: 'Xaiodo',
          message:
              'Xaiodo: Something about the weather. I think it\'s going to rain today.',
          time: '17:00',
          categories: [
            Category(
              name: 'Challenge',
              primaryColor: Colors.pinkAccent,
              secondaryColor: Colors.white,
            ),
          ],
        ),
        ChatItem(
          imageUrl:
              'https://cdn.discordapp.com/attachments/1046399512526205038/1106591924665729094/cat.png',
          name: 'Cat',
          message: 'Cat: I wanna sleep.',
          time: '17:00',
        ),
        ChatItem(
          imageUrl:
              'https://cdn.discordapp.com/attachments/1046399512526205038/1106591674169294990/2.png',
          name: 'Xaiodo',
          message:
              'Xaiodo: Something about the weather. I think it\'s going to rain today.',
          time: 'Mon',
          categories: [
            Category(
              name: 'Help Req.',
              primaryColor: Colors.yellow,
              secondaryColor: Colors.black,
            ),
          ],
        ),
      ];
}
