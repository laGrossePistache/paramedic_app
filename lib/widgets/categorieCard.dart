import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorieCard extends StatelessWidget {
  // final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: ListTile(
        leading: Icon(FontAwesomeIcons.medkit),
        title: Text(
          'Medicaments',
          style: TextStyle(
            fontFamily: 'Cinzel',
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}