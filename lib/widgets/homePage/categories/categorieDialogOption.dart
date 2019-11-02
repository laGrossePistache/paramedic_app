import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';

class CategorieDialogOption extends StatelessWidget {
  final String title;
  final String pageName;
  final ContentParamedic content;
  final Function onPressed;
  CategorieDialogOption({this.title, this.pageName, this.content, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      child: Row(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.circle,
            size: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              title,
            ),
          )
        ],
      ),
      onPressed: onPressed
    );
  }
}
