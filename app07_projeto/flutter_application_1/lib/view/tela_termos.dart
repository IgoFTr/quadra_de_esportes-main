import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaTermos extends StatelessWidget {
  const TelaTermos({super.key});
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
            child: Text('TERMOS E CONDIÇÕES',
                style: GoogleFonts.poppins(
                    fontSize: 72, fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 50),
          Align(
              alignment: Alignment.center,
              child: Image.asset('lib/images/undraw_termos.png')),
          SizedBox(height: 50),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    ' O uso deste aplicativo implica na aceitação dos seguintes termos e condições:',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        fontSize: 40, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 100),
                  Text(
                    '1. Este aplicativo é fornecido "como está", sem garantias expressas ou implícitas de qualquer tipo, incluindo, mas não se limitando a garantias de comerciabilidade, adequação a uma finalidade específica e não violação. O uso deste aplicativo é de total responsabilidade do usuário.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '2. Este aplicativo é apenas para fins informativos e educacionais. O usuário é responsável por verificar a precisão e adequação de todas as informações fornecidas neste aplicativo.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '3. O uso deste aplicativo não garante a disponibilidade ou o acesso a qualquer outro produto ou serviço fornecido pelo proprietário do aplicativo ou terceiros.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '4. O proprietário do aplicativo não se responsabiliza por quaisquer danos diretos, indiretos, incidentais, especiais, consequenciais ou punitivos decorrentes do uso deste aplicativo ou da incapacidade de usá-lo.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '5. O proprietário do aplicativo reserva-se o direito de modificar ou encerrar este aplicativo a qualquer momento, sem aviso prévio.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '6. O usuário concorda em cumprir todas as leis e regulamentações aplicáveis ao uso deste aplicativo.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '7. Este termo e condições são regidos pelas leis da jurisdição em que o usuário reside, sem consideração a conflitos de princípios legais. Qualquer ação legal decorrente deste termo e condições deve ser apresentada exclusivamente nos tribunais localizados na referida jurisdição.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                ],
              )),
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
          ),
          SizedBox(height: 60),
        ]),
      ),
    );
  }
}
