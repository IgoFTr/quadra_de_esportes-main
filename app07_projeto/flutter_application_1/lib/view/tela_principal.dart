import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/view/tela_favoritos.dart';
import 'package:flutter_application_1/view/tela_amigos.dart';
import 'package:flutter_application_1/view/tela_agendados.dart';
import 'package:flutter_application_1/view/tela_pesquisa.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80, 80, 80, 100),
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Booking Sports',
                  style: GoogleFonts.poppins(
                      fontSize: 60, color: Color.fromRGBO(51, 0, 255, 20)),
                ),
                IconButton(
                  icon: Icon(Icons.logout,
                      size: 64, color: Color.fromRGBO(51, 0, 255, 20)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ]),
          SizedBox(
            height: 70,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Bem-vindo,',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Fulano',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 13,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TelaAmigos()),
                    );
                  },
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('lib/images/undraw_friends.png'),
                        width: 400,
                        height: 400,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Amigos',
                        style: GoogleFonts.poppins(
                            fontSize: 60,
                            color: Color.fromRGBO(51, 0, 255, 20)),
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width / 2.8,
                      MediaQuery.of(context).size.height / 4,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    side: BorderSide(
                        color: Color.fromRGBO(51, 0, 255, 20), width: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaPesquisa()));
                  },
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('lib/images/undraw_find.png'),
                        width: 400,
                        height: 400,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Encontrar',
                        style: GoogleFonts.poppins(
                            fontSize: 60,
                            color: Color.fromRGBO(51, 0, 255, 20)),
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width / 2.8,
                      MediaQuery.of(context).size.height / 4,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    side: BorderSide(
                        color: Color.fromRGBO(51, 0, 255, 20), width: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaAgendados()),
                    );
                  },
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('lib/images/undraw_agenda.png'),
                        width: 400,
                        height: 400,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Agendados',
                        style: GoogleFonts.poppins(
                            fontSize: 60,
                            color: Color.fromRGBO(51, 0, 255, 20)),
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width / 2.8,
                      MediaQuery.of(context).size.height / 4,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    side: BorderSide(
                        color: Color.fromRGBO(51, 0, 255, 20), width: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaFavoritos()),
                    );
                  },
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('lib/images/undraw_fav.png'),
                        width: 400,
                        height: 400,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Favoritos',
                        style: GoogleFonts.poppins(
                            fontSize: 60,
                            color: Color.fromRGBO(51, 0, 255, 20)),
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width / 2.8,
                      MediaQuery.of(context).size.height / 4,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    side: BorderSide(
                        color: Color.fromRGBO(51, 0, 255, 20), width: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          )
        ]),
      ),
    );
  }
}
