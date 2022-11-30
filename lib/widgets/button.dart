import 'package:finansa/styles/typography.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final double width;
  final bool isPrimary;
  final Function() onPressed;

  const ButtonCustom({
    Key? key,
    this.width = double.infinity,
    required this.onPressed,
    required this.text,
    this.isPrimary = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: isPrimary ? primaryColor : secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          'Get Started',
          style: isPrimary
              ? whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)
              : altblackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}
