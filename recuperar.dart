import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Recuperar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar Senha'),
      ),
      body: Container(
        color: Color(0xFFD9D9D9),
        padding: EdgeInsets.fromLTRB(12, 30, 10, 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 1, 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF000000),
                  ),
                  child: Container(
                    width: 23,
                    height: 2,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 2, 14),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Recuperar Senha',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'E-mail',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 5, 193),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: InputBorder.none,
                    hintText: 'Digite seu email',
                    hintStyle: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF316EDB),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    //Enviar
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color(0xFF316EDB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Text(
                      'Enviar',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
