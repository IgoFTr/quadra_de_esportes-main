import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/tela_termos.dart';
import 'package:google_fonts/google_fonts.dart';

bool? check = false;

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
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
          SizedBox(height: 100),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Não tem uma conta?',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Crie sua conta',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('É fácil e rápido!',
                style: GoogleFonts.poppins(fontSize: 40)),
          ),
          SizedBox(height: 250),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Nome completo'),
              style: GoogleFonts.poppins(fontSize: 50)),
          SizedBox(height: 60),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'E-mail'),
              style: GoogleFonts.poppins(fontSize: 50)),
          SizedBox(height: 60),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Telefone'),
              style: GoogleFonts.poppins(fontSize: 50)),
          SizedBox(height: 60),
          TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Crie uma senha'),
              style: GoogleFonts.poppins(fontSize: 50)),
          SizedBox(height: 60),
          TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Confirme sua senha'),
              style: GoogleFonts.poppins(fontSize: 50)),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(
                      'Termos e Condições',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    content: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Ao clicar no botão "Sim" você estará ',
                                style: GoogleFonts.poppins(fontSize: 40),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'aceitando nossos ',
                                    style: GoogleFonts.poppins(fontSize: 40),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TelaTermos(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'termos e condições.',
                                      style: GoogleFonts.poppins(
                                        fontSize: 40,
                                        color: Color.fromRGBO(51, 0, 255, 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Cancelar',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            color: Color.fromRGBO(51, 0, 255, 20),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: SizedBox(
                                height: 180,
                                child: Center(
                                  child: Text(
                                    'Usuário cadastrado com sucesso!',
                                    style: GoogleFonts.poppins(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              duration: Duration(seconds: 5),
                              backgroundColor: Color.fromRGBO(51, 0, 255, 20),
                            ),
                          );
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sim',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            color: Color.fromRGBO(51, 0, 255, 20),
                          ),
                        ),
                      ),
                    ],
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 60, vertical: 40),
                  );
                },
              );
            },
            child: Text(
              'Inscreva-se',
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
              'Voltar',
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
