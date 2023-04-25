import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/amigo.dart';

class TelaAmigos extends StatefulWidget {
  const TelaAmigos({super.key});

  @override
  State<TelaAmigos> createState() => _TelaAmigosState();
}

class _TelaAmigosState extends State<TelaAmigos> {
  List<Amigo> lista = [];
  var index;
  var txtUsuario = TextEditingController();
  var txtNome = TextEditingController();

  @override
  void initState() {
    index = -1;
    lista.add(Amigo('Igor_FT', 'Igor Francisco Tristão'));
    lista.add(Amigo('Pavan_Lucas99', 'Lucas Pavan Luiz'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(51, 0, 255, 20),
      padding: EdgeInsets.only(top: 60),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(51, 0, 255, 20),
            title: Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Friends',
                  style: GoogleFonts.poppins(
                      fontSize: 72, color: Color.fromRGBO(255, 255, 255, 1)),
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
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: adicionar(),
            ),
            Expanded(
              flex: 2,
              child: listar(),
            ),
          ],
        ),
        persistentFooterButtons: [
          Text('${lista.length.toString()} amigos'),
        ],
      ),
    );
  }

  adicionar() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 5,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: txtUsuario,
              style: GoogleFonts.poppins(fontSize: 40),
              decoration: InputDecoration(
                labelText: 'Nome de usuário',
                labelStyle: GoogleFonts.poppins(fontSize: 40),
                icon: Icon(
                  Icons.verified,
                  size: 40,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: txtNome,
              style: GoogleFonts.poppins(fontSize: 40),
              decoration: InputDecoration(
                labelText: 'Nome completo',
                labelStyle: GoogleFonts.poppins(fontSize: 40),
                icon: Icon(
                  Icons.person,
                  size: 40,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                if (txtUsuario.text.isNotEmpty && txtNome.text.isNotEmpty) {
                  if (index == -1) {
                    setState(() {
                      lista.add(Amigo(txtUsuario.text, txtNome.text));
                    });
                    mensagem(
                      'Amigo adicionado com sucesso.',
                      Color.fromRGBO(55, 0, 255, 0.5),
                    );
                  } else {
                    setState(() {
                      lista[index] = Amigo(
                        txtUsuario.text,
                        txtNome.text,
                      );
                      index = -1;
                    });
                    mensagem(
                      'Cadastro alterado com sucesso.',
                      Color.fromRGBO(51, 0, 255, 20),
                    );
                  }

                  txtUsuario.clear();
                  txtNome.clear();
                } else {
                  mensagem(
                    'Os campos não podem ser vazios.',
                    Colors.redAccent.shade100,
                  );
                }
              },
              child: Text(
                'Adicionar',
                style: GoogleFonts.poppins(fontSize: 40),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 100),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Color.fromRGBO(51, 0, 255, 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  listar() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 40,
              ),
              title: Text(
                lista[index].usuario,
                style: GoogleFonts.poppins(fontSize: 40),
              ),
              subtitle: Text(
                lista[index].nome,
                style: GoogleFonts.poppins(fontSize: 40),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete_outline,
                  size: 40,
                ),
                onPressed: () {
                  setState(() {
                    lista.removeAt(index);
                  });
                  mensagem(
                    'Amigo excluido com sucesso.',
                    Color.fromRGBO(55, 0, 255, 0.5),
                  );
                },
              ),
              onTap: () {
                setState(() {
                  this.index = index;
                  txtUsuario.text = lista[index].usuario;
                  txtNome.text = lista[index].nome;
                });
              },
              tileColor: (this.index == index)
                  ? Color.fromRGBO(51, 0, 255, 20).withOpacity(0.2)
                  : Colors.white,
            ),
          );
        },
      ),
    );
  }

  //Exibir Mensagem
  mensagem(msg, cor) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
      ),
      duration: Duration(seconds: 2),
      backgroundColor: cor,
    ));
  }
}
