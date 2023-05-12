import 'package:flutter/material.dart';
import 'package:test_task_2/models/category.dart';

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final List<Category?> categories;

  const ChatItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    this.categories = const [],
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                imageUrl,
              ),
              radius: 26,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff27597b),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text(
                      message,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (categories.isNotEmpty)
                    Row(
                      children: [
                        ...List.generate(
                          categories.length,
                          (index) => Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: categories[index]!.primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              categories[index]!.name,
                              style: TextStyle(
                                color: categories[index]!.secondaryColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ],
              ),
            ),
          ],
        ),
      );
}
