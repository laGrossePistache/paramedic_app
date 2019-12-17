import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paramedic_app/constant.dart';
import 'package:paramedic_app/models/globalData.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String username = Provider.of<GlobalData>(context).getUsername;

    return SafeArea(
      child: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(8.0, 15, 8.0, 20.0),
          children: <Widget>[
            Text(
              'Profile',
              textAlign: TextAlign.center,
              style: kTitleTextStyleTab,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Card(
                    color: Colors.grey[100],
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Icon(FontAwesomeIcons.portrait, size: 64),
                      title: Text(username),
                      subtitle: Text('Paramédic'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Historique',
                  style: kSubTitleTextStyleTab,
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: Divider(
                    height: 5.0,
                    color: kColorAppBar,
                  ),
                ),
                HistoriqueCard()
              ],
            )
          ],
        ),
      ),
    );
  }
}


