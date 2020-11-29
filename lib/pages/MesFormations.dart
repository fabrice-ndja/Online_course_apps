import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MesFormations extends StatefulWidget {
  @override
  _MesFormationsState createState() => _MesFormationsState();
}

class _MesFormationsState extends State<MesFormations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // La tete de mon ecran
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 30,
            color: Colors.grey[700],
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.grey[700],
            ),
            onPressed: () {},
          ),
        ],
      ),
      // le corps de mon ecran
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Text(
                      "Mes Formations",
                      style: GoogleFonts.lato(
                        fontSize: 34,
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // c'est un package utilisé pour créer des barres de progression rapidement il est sur Pub.dev
                CupertinoProgressBar(
                  value: 0.77,
                  trackColor: Colors.grey[400],
                  valueColor: Colors.orange,
                ),
                SizedBox(height: 40),
                //Expanded est un widget qui peut contenir des Columns des Rows et pleins d'autres widget 
                //pour leurs donner une dimension parfaite

              ],
            ),
          ),
        ],
      ),
    );
  }
}
