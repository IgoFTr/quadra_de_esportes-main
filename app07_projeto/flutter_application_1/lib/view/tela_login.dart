import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/tela_cadastro.dart';
import 'package:flutter_application_1/view/tela_esqueceu.dart';
import 'package:flutter_application_1/view/tela_principal.dart';
import 'package:flutter_application_1/view/tela_sobre.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80, 80, 80, 100),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Booking Sports',
              style: GoogleFonts.poppins(
                  fontSize: 60, color: Color.fromRGBO(51, 0, 255, 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaSobre()),
                );
              },
              child: Text(
                '?',
                style: GoogleFonts.poppins(
                  fontSize: 72,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(51, 0, 255, 20),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 70,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Olá, seja bem vindo ao Booking Sports',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Antes de continuar, por favor faça seu login.',
                style: GoogleFonts.poppins(fontSize: 40)),
          ),
          SizedBox(
            height: 80,
          ),
          Image(
            image: AssetImage('lib/images/undraw_login.png'),
            width: 800,
            height: 800,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 80,
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
          TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Senha'),
              style: GoogleFonts.poppins(fontSize: 40)),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaEsqueceu()),
                );
              },
              child: Text('Esqueceu sua senha?',
                  style: GoogleFonts.poppins(
                      fontSize: 40, color: Color.fromRGBO(51, 0, 255, 20))),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaPrincipal()),
              );
            },
            child: Text(
              'Entrar',
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
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Não tem uma conta?',
                    style: GoogleFonts.poppins(fontSize: 40)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaCadastro()),
                    );
                  },
                  child: Text('Se inscreva!',
                      style: GoogleFonts.poppins(
                          fontSize: 40, color: Color.fromRGBO(51, 0, 255, 20))),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
