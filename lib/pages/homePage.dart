import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/widgets/homePage/categories/categoriesTab.dart';
import 'package:paramedic_app/widgets/homePage/favorites/favoritesTab.dart';
import 'package:paramedic_app/widgets/homePage/homeTab.dart';

class HomePage extends StatefulWidget {
  static const id = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    HomeTab(),
    CategoriesTab(),
    FavoritesTab(),
    Icon(FontAwesomeIcons.solidUser),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
          title: Text(
            'Paramédic App',
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          onTap: onTapNav,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              title: Text('Accueil'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookMedical),
              title: Text('Catégories'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidHeart),
              title: Text('Favoris'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser),
              title: Text('Profile'),
            )
          ],
        ),
        body: _children.elementAt(_currentIndex));
  }

  void onTapNav(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
