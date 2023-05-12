import 'package:flutter/material.dart';
import 'package:test_task_2/models/category.dart';

class ChatItem extends StatelessWidget {
  final List<String> imageUrls;
  final String name;
  final String message;
  final String time;
  final List<Category?> categories;

  const ChatItem({
    super.key,
    required this.imageUrls,
    required this.name,
    required this.message,
    required this.time,
    this.categories = const [],
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (imageUrls.length > 1)
              SizedBox(
                height: 70,
                width: 70,
                child: Stack(
                  children: [
                    Positioned(
                      top: 2,
                      left: 16,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          imageUrls.last,
                        ),
                        radius: 26,
                      ),
                    ),
                    Positioned(
                      right: 16,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            imageUrls.first,
                          ),
                          radius: 26,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 35,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff0f476d),
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            '+${imageUrls.length - 2}',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (imageUrls.length == 1)
              Container(
                alignment: Alignment.centerLeft,
                width: 70,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    imageUrls.first,
                  ),
                  radius: 28,
                ),
              ),
            SizedBox(
              width: 10,
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
                                fontWeight: FontWeight.bold,
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
