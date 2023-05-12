import 'package:test_task_2/models/category.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_item_widget.dart';

class Data {
  List<ChatItem> get chats => const [
        ChatItem(
          imageUrls: [
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106591674169294990/2.png'
          ],
          name: 'Kakashi',
          message: 'Kakashi: If You Don\'t Want It, It Becomes You',
          time: 'Mon',
          categories: [
            Category(
              name: 'Challenge',
              primaryColor: Colors.pinkAccent,
              secondaryColor: Colors.white,
            ),
          ],
        ),
        ChatItem(
          imageUrls: [
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106591924665729094/cat.png',
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106591924665729094/cat.png',
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106591924665729094/cat.png',
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106591924665729094/cat.png',
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106591674169294990/2.png'
          ],
          name: 'Cat, Xaiod...',
          message: 'Cat: I wanna sleep. No more games today.',
          time: '17:00',
        ),
        ChatItem(
          imageUrls: [
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106622705819734150/image.png'
          ],
          name: 'Thors',
          message:
              'Thors: Thorfinn you don\'t have enemies, nobody have enemies. ',
          time: 'Yesterday',
          categories: [
            Category(
              name: 'Help Req.',
              primaryColor: Colors.yellow,
              secondaryColor: Colors.black,
            ),
          ],
        ),
        ChatItem(
          imageUrls: [
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106624150971371640/image.png'
          ],
          name: 'Thorfinn',
          message: 'Thorfinn: I want to be a kinder and better person',
          time: 'Yesterday',
          categories: [
            Category(
              name: 'Challenge',
              primaryColor: Colors.pinkAccent,
              secondaryColor: Colors.white,
            ),
          ],
        ),
        ChatItem(
          imageUrls: [
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106615970602164305/ichigo.png'
          ],
          name: 'Ichigo',
          message:
              'Ichigo: Unless I grip the sword, I cannot protect you. While gripping the sword, I cannot embrace you.',
          time: 'Fri',
          categories: [
            Category(
              name: 'Engagement Partner.',
              primaryColor: Color(0xff585857),
              secondaryColor: Colors.white,
            ),
          ],
        ),
        ChatItem(
          imageUrls: [
            'https://cdn.discordapp.com/attachments/1046399512526205038/1106615938188583022/Rin.jpg'
          ],
          name: 'Rin',
          message:
              'Rin: It\'s not good to hide your wounds you know. I am taking care of you after all.',
          time: 'Fri',
        ),
      ];
}
