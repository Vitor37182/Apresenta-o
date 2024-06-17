import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Container(
        color: Color(0xFFD9D9D9),
        padding: EdgeInsets.fromLTRB(7, 17, 24, 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 35,
                  height: 25,
                  padding: EdgeInsets.fromLTRB(6, 13, 6, 10),
                  child: Container(
                    color: Color(0xFF000000),
                    width: 23,
                    height: 2,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 29),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Perfil',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 70),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    color: Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildProfileDetail('Nome do aluno'),
            buildProfileDetail('Idade'),
            buildProfileDetail('Escolaridade'),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFBE1B1B),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                child: Text(
                  'Excluir',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileDetail(String text) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 0, 18, 26),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
