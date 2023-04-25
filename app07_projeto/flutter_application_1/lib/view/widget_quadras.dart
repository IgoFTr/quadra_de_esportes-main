import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetQuadra extends StatelessWidget {
  final String imagem;
  final String nome;
  final String endereco;
  final String bairro;
  final int avaliacao;

  const WidgetQuadra(
      this.bairro, this.avaliacao, this.endereco, this.imagem, this.nome,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(100, 50, 100, 0),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(51, 0, 255, 20),
          border: Border.all(),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Image.asset(
              imagem,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              fit: BoxFit.contain,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    nome,
                    style: GoogleFonts.poppins(
                        fontSize: 50, color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Center(
                  child: Row(
                    children: List.generate(avaliacao, (index) {
                      return const Icon(
                        Icons.star,
                        size: 50,
                        color: Color.fromARGB(255, 255, 255, 255),
                      );
                    }).toList()
                      ..addAll(List.generate(5 - avaliacao, (index) {
                        return const Icon(
                          Icons.star_outline,
                          size: 50,
                          color: Color.fromARGB(255, 255, 255, 255),
                        );
                      }).toList()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              endereco,
              style: GoogleFonts.poppins(
                  fontSize: 40, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              bairro,
              style: GoogleFonts.poppins(
                  fontSize: 40, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
        ]),
      ),
    ]);
  }
}
