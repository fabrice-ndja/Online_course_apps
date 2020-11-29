import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.book),
            onPressed: () {
              // print est une fonction qui nous permit de voir les actions de nos widget et fonction
              // il s'affiche seulement dans le terminal (la console de debogage)
              print("J'ai cliqué sur le bouton");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(top: size.height * 0.4),
                    //height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "CHAPITRE 1",
                          style: GoogleFonts.montserrat(
                            color: Colors.white30,
                            letterSpacing: 2,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Les bases de Natation",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            letterSpacing: 2,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' PRIX:',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 7.000',
                                    style: GoogleFonts.lato(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '           ',
                                    style: GoogleFonts.lato(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Image(
                              image: AssetImage("assets/icones/lunettes.png"),
                              fit: BoxFit.fill,
                            ))
                          ],
                        ),
                        Expanded(
                          child: SingleChildScrollView( 
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Definition",
                                  style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Un bateau est une construction humaine capable de flotter sur l'eau et de s'y déplacer, dirigé par ses occupants. Il répond aux besoins du transport maritime ou fluvial, et permet diverses activités telles que le transport de personnes ou de marchandises, la guerre sur mer, la pêche, la plaisance, ou d'autres services tels que la sécurité des autres bateaux.",
                                  style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Un bateau est une construction humaine capable de flotter sur l'eau et de s'y déplacer, dirigé par ses occupants. Il répond aux besoins du transport maritime ou fluvial, et permet diverses activités telles que le transport de personnes ou de marchandises, la guerre sur mer, la pêche, la plaisance, ou d'autres services tels que la sécurité des autres bateaux.",
                                  style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
