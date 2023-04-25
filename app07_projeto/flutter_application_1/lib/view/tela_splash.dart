import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/tela_login.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaSplash extends StatelessWidget {
  const TelaSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'lib/images/splash.gif',
        fit: BoxFit.contain,
      ),
      logoWidth: 300,
      title: Text(
        'Booking Sports',
        style: GoogleFonts.poppins(
          fontSize: 72,
          color: const Color.fromRGBO(51, 0, 255, 20),
        ),
      ),
      backgroundColor: Colors.white,
      showLoader: false,
      loadingText: Text(
        'Carregando...',
        style: GoogleFonts.poppins(
          fontSize: 40,
        ),
      ),
      durationInSeconds: 8,
      navigator: const TelaLogin(),
    );
  }
}
