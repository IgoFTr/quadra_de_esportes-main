import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaSobre extends StatelessWidget {
  const TelaSobre({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(80, 80, 80, 100),
        child: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Booking Sports',
              style: GoogleFonts.poppins(
                  fontSize: 72, color: Color.fromRGBO(51, 0, 255, 20)),
            ),
          ),
          SizedBox(height: 100),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Sobre o aplicativo',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 100),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    ' "Booking Sports" é um aplicativo desenvolvido pelos alunos do curso de engenharia da computação da UNAERP, Igor Francisco Tristão e Lucas Pavan Luiz, como parte do projeto da matéria de Interfaces Humano-Computador e Sistema Multimídia. A ideia surgiu a partir da necessidade de uma plataforma que pudesse ser uma rede social para atletas profissionais e amadores e, ao mesmo tempo, mostrasse as quadras esportivas disponíveis na região e possibilitasse o agendamento de jogos.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        fontSize: 40, color: Color.fromRGBO(51, 0, 255, 20)),
                  ),
                  SizedBox(height: 30),
                  Text(
                    ' Com o aplicativo, os usuários podem adicionar seus amigos, procurar quadras esportivas e salvá-las em seus favoritos, além de marcar jogos com seus amigos e reservar as quadras para as partidas. A plataforma é intuitiva e fácil de usar, com um design moderno e amigável.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        fontSize: 40, color: Color.fromRGBO(51, 0, 255, 20)),
                  ),
                  SizedBox(height: 30),
                  Text(
                    ' Atualmente, o aplicativo está em desenvolvimento utilizando o framework Flutter e será entregue como projeto para a matéria de Novas Tecnologias de Informação e Comunicação, ministrada pelo professor Dr. Rodrigo de Oliveira Plotze.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        fontSize: 40, color: Color.fromRGBO(51, 0, 255, 20)),
                  ),
                  SizedBox(height: 30),
                  Text(
                    ' Com o "Booking Sports", atletas de todas as idades e habilidades poderão se conectar, agendar jogos e desfrutar do esporte de maneira fácil e acessível. O aplicativo é uma solução ideal para quem quer aproveitar o tempo livre para praticar esportes e se divertir com amigos e colegas.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        fontSize: 40, color: Color.fromRGBO(51, 0, 255, 20)),
                  ),
                  SizedBox(height: 100),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Desenvolvedores',
                        style: GoogleFonts.poppins(
                            fontSize: 72, fontWeight: FontWeight.w600)),
                  ),
                ],
              )),
          SizedBox(height: 100),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  child: Image.asset(
                    'lib/images/igor_sobre.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 500,
                  child: Image.asset(
                    'lib/images/lucas_sobre.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 130),
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
