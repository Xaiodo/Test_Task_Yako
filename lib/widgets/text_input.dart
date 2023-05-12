import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final String hintText;
  final Color primaryColor;
  final Color borderColor;
  final Color focusColor;
  const TextInputWidget({
    super.key,
    this.hintText = 'Search',
    this.primaryColor = Colors.black,
    this.borderColor = Colors.black,
    this.focusColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) => TextField(
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: primaryColor,
          prefixIcon: Icon(
            Icons.search,
            size: 30,
            color: primaryColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          focusColor: focusColor,
        ),
      );
}
