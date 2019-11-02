import 'package:flutter/material.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/globalData.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String username =  Provider.of<GlobalData>(context).getUsername;

    return SafeArea(
      child: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(8.0, 15, 8.0, 20.0),
          children: <Widget>[
            Text(
              'Bienvenue $username!',
              textAlign: TextAlign.center,
              style: kTitleTextStyleTab,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Column(children: <Widget>[

            ],)
          ],
        ),
      ),
    );
  }
}
