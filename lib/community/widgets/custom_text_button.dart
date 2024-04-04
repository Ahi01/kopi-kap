import 'package:flutter/material.dart';

class CTextButton extends StatelessWidget {
  const CTextButton({
    super.key,
    required this.text,
    this.icon,
    this.color,
    this.style,
    required this.onTap,
  });
  final String text;
  final IconData? icon;
  final Color? color;
  final TextStyle? style;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
          fixedSize: const Size(double.maxFinite, 47),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      icon: Icon(icon),
      onPressed: () => onTap(),
      label: Text(
        text,
        style: style,
      ),
    );
  }
}
