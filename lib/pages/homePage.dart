import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/widgets/categories/categoriesTab.dart';
import 'package:paramedic_app/widgets/favorites/favoritesTab.dart';

class HomePage extends StatelessWidget {
  static const id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(FontAwesomeIcons.heartbeat),
          title: Text(
            'Paramédic App',
          ),
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(FontAwesomeIcons.home),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.bookMedical),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidHeart),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidUser),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(FontAwesomeIcons.home),
            CategoriesTab(),
            FavoritesTab(),
            Icon(FontAwesomeIcons.solidUser),
          ],
        ),
      ),
    );
  }
}
