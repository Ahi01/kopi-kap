import 'package:flutter/material.dart';
import 'package:test_1/const.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? padding;
  final Widget? prefixIcon;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.padding,
    this.prefixIcon,
    this.maxLines,
    this.minLines,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding: padding,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: hintText,
        helperStyle: const TextStyle(
            color: AppColors.textGrey, fontWeight: FontWeight.w400),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: const TextStyle(
            color: AppColors.textGrey, fontWeight: FontWeight.w400),
        fillColor: AppColors.colorFiel,
        filled: true,
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedErrorBorder:
            const OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
