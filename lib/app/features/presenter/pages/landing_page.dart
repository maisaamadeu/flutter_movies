import 'package:flutter/material.dart';
import 'package:flutter_movies/app/features/presenter/shared/theme/app_colors.dart';
import 'package:flutter_movies/app/features/presenter/shared/widgets/custom_elevated_button.dart';
import 'package:flutter_movies/app/features/presenter/shared/widgets/custom_text_button.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.network(
              'https://img.elo7.com.br/product/original/3FBBED7/big-poster-filme-batman-2022-90x60-cm-lo005-filme-batman.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.25, 1],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "O que vamos assistir hoje?",
                  style: GoogleFonts.notoSans(
                    color: AppColors.textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  "Encontre as informações dos seus filmes favoritos aqui",
                  style: GoogleFonts.notoSans(
                    color: AppColors.textColor.withOpacity(0.7),
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                CustomElevatedButton(
                  onPressed: () {},
                  textButton: 'Cadastrar',
                  backgroundColorButton: AppColors.primaryColor,
                ),
                const SizedBox(height: 20),
                CustomElevatedButton(
                  onPressed: () {},
                  textButton: 'Entrar',
                  backgroundColorButton: AppColors.secondaryColor,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextButton(
                      textColor: AppColors.textColor.withOpacity(0.7),
                      textButton: 'Privacidade & Políticas',
                      onPressed: () {},
                    ),
                    Container(
                      width: 1,
                      height: 10,
                      color: AppColors.textColor.withOpacity(0.7),
                    ),
                    CustomTextButton(
                      textColor: AppColors.textColor.withOpacity(0.7),
                      textButton: 'Termos & Condições',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
