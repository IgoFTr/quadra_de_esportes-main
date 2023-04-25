import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/tela_agendamento.dart';
import 'package:flutter_application_1/view/widget_quadras.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaPesquisa extends StatelessWidget {
  const TelaPesquisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(51, 0, 255, 20),
      padding: EdgeInsets.only(top: 100),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Encontrar Quadras',
                    style: GoogleFonts.poppins(
                        fontSize: 50, color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              actions: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 80),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
              bottom: criarTabBar(),
              backgroundColor: Color.fromRGBO(51, 0, 255, 20),
            ),
          ),
          body: TabBarView(
            children: [
              Scaffold(
                body: SingleChildScrollView(
                  child: Column(children: [
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
                            'Bairro City Ribeirão',
                            3,
                            'Rua Auriza Couto, 1755',
                            'lib/images/quadra_fut1.png',
                            'Quadra Boa Vista')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Riberânia',
                            4,
                            'Rua Mariana Junqueira, 474',
                            'lib/images/quadra_fut2.png',
                            'Quadra Juntos')),
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
                            'Avenina Costábile Romano, 2745',
                            'lib/images/quadra_fut3.png',
                            'Quadra Bola no Pé')),
                  ]),
                ),
              ),
              Scaffold(
                body: SingleChildScrollView(
                  child: Column(children: [
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Jardim Paulista',
                            5,
                            'Rua Açai, 475 ',
                            'lib/images/quadra_volei1.png',
                            'Quadra para Todos')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Riberânia',
                            4,
                            'Avenida Costábile Romano, 4789',
                            'lib/images/quadra_volei2.png',
                            'Quadra do Pico')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Nova Riberânia',
                            4,
                            'Rua Sargento Novaz, 421',
                            'lib/images/quadra_volei3.png',
                            'Quadra do Sargento')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Lagoinha',
                            5,
                            'Rua Niterói, 452',
                            'lib/images/quadra_volei4.png',
                            'Quadra do Lago')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Lagoinha',
                            4,
                            'Avenida Presidente Kennedy, 4157',
                            'lib/images/quadra_volei5.png',
                            'Quadra Dois Amigos')),
                  ]),
                ),
              ),
              Scaffold(
                body: SingleChildScrollView(
                  child: Column(children: [
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
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Jardim Paulista',
                            4,
                            'Avenida Treze de Maio, 4174',
                            'lib/images/quadra_futgra2.png',
                            'Quadra da Treze')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Nova Riberânia',
                            3,
                            'Rua Governador Cairo, 471 ',
                            'lib/images/quadra_futgra3.png',
                            'Quadra do Cairo')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Riberânia',
                            4,
                            'Avenida Presidente Kennedy, 1065',
                            'lib/images/quadra_futgra4.png',
                            'Quadra Riberânia')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Riberânia',
                            4,
                            'Avenida Costábile Romano, 4289',
                            'lib/images/quadra_futgra5.png',
                            'Quadra Sul')),
                  ]),
                ),
              ),
              Scaffold(
                body: SingleChildScrollView(
                  child: Column(children: [
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
                            'Avenida Leão XIII, 122',
                            'lib/images/quadra_tenis1.png',
                            'Tênis da Riberânia')),
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
                            'Avenida Costábile Romano, 4289',
                            'lib/images/quadra_tenis2.png',
                            'Quadra Sul')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Riberânia',
                            4,
                            'Rua Arnaldo Vitaliano, 1222',
                            'lib/images/quadra_tenis3.png',
                            'Quadra Popular')),
                  ]),
                ),
              ),
              Scaffold(
                body: SingleChildScrollView(
                  child: Column(children: [
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
                            'Avenida Costábile Romano, 4289',
                            'lib/images/quadra_basket1.png',
                            'Quadra Sul')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Lagoinha',
                            4,
                            'Rua Niterói, 4211',
                            'lib/images/quadra_basket2.png',
                            'Quadra do Lago Sul')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaAgendamento()));
                        },
                        child: WidgetQuadra(
                            'Bairro Lagoinha',
                            3,
                            'Rua Niterói, 417',
                            'lib/images/quadra_basket3.png',
                            'Quadra Dois Norte')),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TabBar criarTabBar() {
    return TabBar(
      tabs: [
        Row(
          children: [
            Icon(Icons.sports_soccer),
            SizedBox(width: 5),
            Text(
              'Futsal',
              style: GoogleFonts.poppins(
                  fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.sports_volleyball),
            SizedBox(width: 5),
            Text(
              'Volei de Areia',
              style: GoogleFonts.poppins(
                  fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.sports_baseball),
            SizedBox(width: 5),
            Text(
              'Futsal Grama',
              style: GoogleFonts.poppins(
                  fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.sports_tennis),
            SizedBox(width: 5),
            Text(
              'Tênis',
              style: GoogleFonts.poppins(
                  fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.sports_basketball),
            SizedBox(width: 5),
            Text(
              'Basquete',
              style: GoogleFonts.poppins(
                  fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ],
        ),
      ],
      isScrollable: true,
      indicatorColor: Colors.amberAccent.shade100,
      indicatorWeight: 3,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white24,
    );
  }
}
