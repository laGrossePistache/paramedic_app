import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/widgets/contentCard.dart';


class EqtptTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(8.0, 15, 8.0, 20.0),
          children: <Widget>[
            ContentCard(
              titleWidget: 'Méthode d\'administration',
              backgroundTitleColor: kColorAppBar,
              titleTextColor: kColorBackground,
              contentWidget: <Widget>[
                Text(
                  'hello',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
