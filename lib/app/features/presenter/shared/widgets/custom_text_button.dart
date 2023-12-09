import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.textColor,
    required this.textButton,
    required this.onPressed,
    this.fontSize,
  });

  final Color textColor;
  final String textButton;
  final VoidCallback onPressed;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        textButton,
        style: GoogleFonts.notoSans(
          color: textColor,
          fontSize: fontSize,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
