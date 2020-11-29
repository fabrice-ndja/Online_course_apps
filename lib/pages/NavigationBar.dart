import 'package:Online_course_apps/pages/Accueil.dart';
import 'package:Online_course_apps/pages/Exercices.dart';
import 'package:Online_course_apps/pages/MesFormations.dart';
import 'package:Online_course_apps/pages/Profil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  Widget _child;
  final Accueil _accueil = new Accueil();
  final MesFormations _mesFormations = new MesFormations();
  final ExercicesPage _exercicesPage = new ExercicesPage();
  final ProfilPage _profil = new ProfilPage();
  int _index = 0;
  @override
  void initState() {
    _child = _accueil;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //If you want to show body behind the navbar, it should be true
      extendBody: true,
        body: _child,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: FloatingNavbar(
          backgroundColor: Colors.teal[400],
          selectedBackgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          onTap: (int val){
    setState(() {
        switch (val) {
          case 0:
            _child = _accueil;
            break;
          case 1:
            _child = _mesFormations;
            break;
          case 2:
            _child = _exercicesPage;
            break;
          case 3:
            _child = _profil;
            break;          
        }
        _index = val;
   });
          },
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Accueil',customWidget: _accueil),
            FloatingNavbarItem(icon: Icons.explore, title: 'Formations',customWidget: _mesFormations),
            FloatingNavbarItem(icon: Icons.book, title: 'Exercices',customWidget: _exercicesPage),
            FloatingNavbarItem(icon: Icons.person,title: 'Profil',customWidget: _profil),
          ],
        ),
      ),
    );
  }
}
