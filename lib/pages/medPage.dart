import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/widgets/categoriesTab.dart';

class MedPage extends StatelessWidget {
  static const id = 'medPage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.blue[800],
          title: Text(
            'Médicaments', //TODO: Devrait afficher le médicaments présentement sélectionner
            style: TextStyle(color: Colors.yellow),
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
                icon: Icon(FontAwesomeIcons.user),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(FontAwesomeIcons.home),
            CategoriesTab(),
            Icon(FontAwesomeIcons.user),
          ],
        ),
      ),
    );
  }
}
