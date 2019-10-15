import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/models/globalData.dart';
import 'package:provider/provider.dart';

class CategorieDialogOption extends StatelessWidget {
  final String title;
  final String pageName;
  final String content;

  CategorieDialogOption({this.title, this.pageName, this.content});

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
      onPressed: () {
        Provider.of<GlobalData>(context).currentContent = content;
        Navigator.pop(context);
        Navigator.pushNamed(context, pageName);
      },
    );
  }
}
