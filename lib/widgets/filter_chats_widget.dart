import 'package:flutter/material.dart';
import 'package:test_task_2/my_flutter_app_icons.dart';

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
            MyFlutterApp.sliders,
            size: 30,
            color: color,
          ),
        ),
      );
}
