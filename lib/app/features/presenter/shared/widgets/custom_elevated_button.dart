import 'package:flutter/material.dart';
import 'package:flutter_movies/app/features/presenter/shared/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.textButton,
      required this.backgroundColorButton,
      required this.onPressed});

  final String textButton;
  final Color backgroundColorButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          textButton,
          style: GoogleFonts.notoSans(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColorButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
