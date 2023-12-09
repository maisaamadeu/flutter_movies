import 'package:flutter/material.dart';
import 'package:flutter_movies/app/features/presenter/pages/landing_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}
