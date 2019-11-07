import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';

class MedButtonCritere extends StatelessWidget {
  final String name;
  final bool isCheck;
  final Function onTap;
  MedButtonCritere({this.name, this.isCheck, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      color: (isCheck)? kColorBackground: Colors.grey[300],
      elevation: 3.0,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 2),
        child: ListTile(
            leading: Icon((isCheck)
                ? FontAwesomeIcons.checkSquare
                : FontAwesomeIcons.square),
            title: Text(
              name,
              style: TextStyle(
                  fontWeight: (isCheck) ? FontWeight.bold : FontWeight.normal),
            ),
            onTap: onTap),
      ),
    );
  }
}
