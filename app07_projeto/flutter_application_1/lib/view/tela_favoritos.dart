import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/tela_agendamento.dart';
import 'package:flutter_application_1/view/widget_quadras.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaFavoritos extends StatelessWidget {
  const TelaFavoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(51, 0, 255, 20),
        padding: EdgeInsets.only(top: 60),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: [
              Container(
                color: Color.fromRGBO(51, 0, 255, 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Favoritos',
                          style: GoogleFonts.poppins(
                            fontSize: 50,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 600,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 50,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaAgendamento()),
                    );
                  },
                  child: WidgetQuadra(
                      'Jardim Manoel Penna',
                      4,
                      'Avenida do Senador, 246',
                      'lib/images/quadra_default.jpg',
                      'Quadra dos Amigos')),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaAgendamento()));
                  },
                  child: WidgetQuadra(
                      'Bairro Riberânia',
                      5,
                      'Avenida Leão XII, 412',
                      'lib/images/quadra_futgra1.png',
                      'Quadra do Branco')),
            ]),
          ),
        ));
  }
}
