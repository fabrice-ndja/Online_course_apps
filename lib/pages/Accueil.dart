import 'package:Online_course_apps/pages/Sous_pages/Bateau.dart';
import 'package:Online_course_apps/pages/Sous_pages/GlasseDeBain.dart';
import 'package:Online_course_apps/pages/Sous_pages/Lune.dart';
import 'package:Online_course_apps/pages/Sous_pages/Message.dart';
import 'package:Online_course_apps/pages/Sous_pages/Requin.dart';
import 'package:Online_course_apps/pages/Sous_pages/Surf.dart';
import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Accueil extends StatefulWidget {
  Accueil({Key key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
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
                      "Bienvenue \nFabrice N'dja",
                      style: GoogleFonts.lato(
                        fontSize: 34,
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //Spacer est un widget pour faire une espace responsive
                    Spacer(),
                    // CircleAvatar est un cadre pour les photos il est tres utilisé pour les photos des utilisateur (profil)
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage("assets/images/fabrice.jpg"),
                      backgroundColor: Colors.transparent,
                    )
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
                Expanded(
                  // GridView.count est un widget qui permet de créer des liste de grille 
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    children: [
                      // GestureDetector est un widget qui nous permet de creer des bouton sur n'importe quel widget 
                      //si on n'as pas la possibilité de creer un FlatButton ou un raisedbutton
                      GestureDetector(
                        onTap: (){
                          // Configurer la route de la navigation vers la page Indexer (BateauPage)
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BateauPage()));
                        },
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icones/bateau.png",
                                  height: 100),
                              SizedBox(height: 10),
                              Text(
                                "Bateau",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LunePage()));
                        },
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icones/lune.png",
                                  height: 100),
                              SizedBox(height: 10),
                              Text(
                                "Lune",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>GlassePage()));
                        },
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icones/lunettes.png",
                                  height: 100),
                              SizedBox(height: 10),
                              Text(
                                "Glasse de bain",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RequinPage()));
                        },
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icones/requin.png",
                                  height: 100),
                              SizedBox(height: 10),
                              Text(
                                "Requin",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SurfPage()));
                        },
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icones/surf.png",
                                  height: 100),
                              SizedBox(height: 10),
                              Text(
                                "Surf",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MessagePage()));
                        },
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icones/message.png",
                                  height: 100),
                              SizedBox(height: 10),
                              Text(
                                "Message",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),   
                                                                                                                                 
                    ],
                  ),
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
