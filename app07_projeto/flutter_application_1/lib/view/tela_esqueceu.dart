import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaEsqueceu extends StatelessWidget {
  const TelaEsqueceu({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80, 80, 80, 100),
        child: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Booking Sports',
              style: GoogleFonts.poppins(
                  fontSize: 60, color: Color.fromRGBO(51, 0, 255, 20)),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Esqueceu sua senha?',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Siga os passos:',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Insira seu nome, e-mail ou telefone',
                    style: GoogleFonts.poppins(fontSize: 40)),
                Text('• Clique em recuperar senha',
                    style: GoogleFonts.poppins(fontSize: 40)),
                Text('• Um e-mail de recuperação será enviado para seu e-mail',
                    style: GoogleFonts.poppins(fontSize: 40)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage('lib/images/undraw_esqueceu.png'),
            width: 800,
            height: 800,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Usuário / E-mail / Telefone'),
              style: GoogleFonts.poppins(fontSize: 40)),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: SizedBox(
                  height: 180,
                  child: Center(
                    child: Text(
                      'Verifique seu email para recuperar sua senha!',
                      style: GoogleFonts.poppins(
                          fontSize: 40, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                duration: Duration(seconds: 5),
                backgroundColor: Color.fromRGBO(51, 0, 255, 20),
              ));
              Navigator.pop(context);
            },
            child: Text(
              'Recuperar Senha',
              style: GoogleFonts.poppins(fontSize: 40),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(
                MediaQuery.of(context).size.width,
                100,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Color.fromRGBO(51, 0, 255, 20),
            ),
          ),
          SizedBox(height: 250),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Voltar ao login',
              style: GoogleFonts.poppins(
                fontSize: 40,
                color: Color.fromRGBO(51, 0, 255, 20),
              ),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: Size(
                MediaQuery.of(context).size.width,
                100,
              ),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              side: BorderSide(color: Color.fromRGBO(51, 0, 255, 20), width: 5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          )
        ]),
      ),
    );
  }
}
