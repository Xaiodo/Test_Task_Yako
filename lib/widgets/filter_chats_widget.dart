import 'package:flutter/material.dart';

class FilterChatsWidget extends StatelessWidget {
  final Color color;
  const FilterChatsWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 30,
            color: color,
          ),
        ),
      );
}
