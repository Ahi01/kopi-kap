import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final Size? fixedSize;
  final Color? color;
  final TextStyle? style;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fixedSize,
    this.color,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: fixedSize,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: color,
          elevation: 0),
      onPressed: () => onTap(),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
