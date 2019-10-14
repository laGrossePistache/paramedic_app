import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorieDialogOption extends StatelessWidget {
  final String title;
  final String pageName;

  CategorieDialogOption({this.title, this.pageName});

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      child: Row(
        children: <Widget>[
          Icon(FontAwesomeIcons.circle, size: 10,),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
          )
        ],
      ),
      onPressed: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, pageName);
      },
    );
  }
}