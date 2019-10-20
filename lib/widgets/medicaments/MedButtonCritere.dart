import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedButtonCritere extends StatelessWidget {
  final String name;
  final bool isCheck;
  final Function onTap;
  MedButtonCritere({this.name, this.isCheck, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: ListTile(
          leading: Icon((isCheck)
              ? FontAwesomeIcons.checkSquare
              : FontAwesomeIcons.square),
          title: Text(
            name,
            style: TextStyle(fontWeight: (isCheck)? FontWeight.bold: FontWeight.normal),
          ),
          onTap: onTap),
    );
  }
}
