import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget_quadras.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaAgendados extends StatelessWidget {
  const TelaAgendados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(51, 0, 255, 20),
        padding: const EdgeInsets.only(top: 60),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: [
              Container(
                color: const Color.fromRGBO(55, 0, 255, 1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Agendados',
                          style: GoogleFonts.poppins(
                            fontSize: 50,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.schedule,
                          size: 50,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 600,
                        ),
                        IconButton(
                          icon: const Icon(
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
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
              const WidgetQuadra('Terça-feira, 10h00', 1, 'Rua Niterói, 417',
                  'lib/images/quadra_basket3.png', 'Quadra Dois Norte'),
              const WidgetQuadra(
                  'Terça-feira, 19h00',
                  4,
                  'Avenida Presidente Kennedy, 1065',
                  'lib/images/quadra_futgra4.png',
                  'Quadra Riberânia'),
              const WidgetQuadra(
                  'Quarta-feira, 21h00',
                  4,
                  'Rua Sargento Novaz, 421',
                  'lib/images/quadra_volei3.png',
                  'Quadra do Sargento'),
              const WidgetQuadra('Sábado, 10h00', 4, 'Avenida do Senador, 246',
                  'lib/images/quadra_default.jpg', 'Quadra dos Amigos'),
            ]),
          ),
        ));
  }
}
