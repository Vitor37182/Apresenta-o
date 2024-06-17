import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Cadastro extends StatelessWidget {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _escolaridadeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmaSenhaController =
      TextEditingController();
  final TextEditingController _nomeResponsavelController =
      TextEditingController();
  final TextEditingController _emailResponsavelController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFD9D9D9),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 30, 10, 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 2, 14),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Cadastro',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              // Dados do usuario
              buildInputField('Nome', 'Digite o nome', _nomeController),
              buildInputField('Escolaridade', 'Digite seu grau de escolaridade',
                  _escolaridadeController),
              buildInputField('E-mail', 'Digite seu email', _emailController),
              buildInputField('Senha', 'Digite sua senha', _senhaController,
                  obscureText: true),
              buildInputField('Confirma senha', 'Confirme sua senha',
                  _confirmaSenhaController,
                  obscureText: true),
              buildInputField('Nome do responsavel',
                  'Digite o nome do responsavel', _nomeResponsavelController),
              buildInputField('Email do responsavel',
                  'Digite o email do responsavel', _emailResponsavelController),

              TextButton(
                onPressed: () {
                  enviarCadastro();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF316EDB)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Cadastrar',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField(
      String label, String hint, TextEditingController controller,
      {bool obscureText = false}) {
    return Container(
      margin: EdgeInsets.fromLTRB(4, 0, 4, 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.getFont(
              'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void enviarCadastro() async {
    final nome = _nomeController.text;
    final escolaridade = _escolaridadeController.text;
    final email = _emailController.text;
    final senha = _senhaController.text;
    final nomeResponsavel = _nomeResponsavelController.text;
    final emailResponsavel = _emailResponsavelController.text;

    try {
      await FirebaseFirestore.instance.collection('usuarios').add({
        'nome': nome,
        'escolaridade': escolaridade,
        'email': email,
        'senha': senha,
        'nomeResponsavel': nomeResponsavel,
        'emailResponsavel': emailResponsavel,
      });
      print('Cadastro enviado com sucesso.');
    } catch (e) {
      print('Erro ao enviar cadastro: $e');
    }
  }
}
