import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedPage extends StatelessWidget {
  static const id = 'medPage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
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
                icon: Icon(FontAwesomeIcons.info),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidCheckCircle),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidTimesCircle),
              ),
              Tab(icon: Icon(FontAwesomeIcons.syringe),)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(FontAwesomeIcons.info),
            Icon(FontAwesomeIcons.solidCheckCircle),
            Icon(FontAwesomeIcons.solidTimesCircle),
            Icon(FontAwesomeIcons.syringe),
          ],
        ),
      ),
    );
  }
}
